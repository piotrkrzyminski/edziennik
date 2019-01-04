package pl.dziennik.front.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pl.dziennik.core.services.PresenceService;
import pl.dziennik.core.services.StudentService;
import pl.dziennik.facades.ClassFacade;
import pl.dziennik.facades.MeetingFacade;
import pl.dziennik.facades.PresentFacade;
import pl.dziennik.facades.data.MeetingData;
import pl.dziennik.facades.data.PresentData;
import pl.dziennik.facades.data.StudentData;
import pl.dziennik.facades.exceptions.SaveItemException;
import pl.dziennik.front.forms.MeetingForm;
import pl.dziennik.front.forms.PresentForm;
import pl.dziennik.model.ClassModel;

import javax.validation.Valid;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

/**
 * Controller for meetings fragment.
 */
@Controller
@RequestMapping(value = "/meetings")
public class MeetingsComponentController extends PageController {

    private static final Logger LOG = LoggerFactory.getLogger(MeetingsComponentController.class);

    private MeetingFacade meetingFacade;
    private PresentFacade presentFacade;
    private ClassFacade classFacade;
    private PresenceService presenceService;
    private StudentService studentService;

    /**
     * Zwraca komponent z danymi dotyczącymi spotkań, które odbywają się w tygodniu dla dnia podanego w parametrze.
     * Jeżeli data nie jest podana to zwraca dla aktualnego dnia.
     *
     * @param date  dzień dla którego należy znaleźć spotkania.
     * @param model model.
     * @return widok komponentu spotkań.
     */
    @RequestMapping(method = RequestMethod.GET)
    public String getMeetingPage(@RequestParam("date") @DateTimeFormat(pattern = "dd-MM-yyyy") Optional<Date> date,
                                 final Model model) {

        Date seachDate = new Date();
        if (date.isPresent()) {
            seachDate = date.get();
        }

        prepareMeetings(model, seachDate);

        return ControllerConstants.Fragments.meetingFragment;
    }

    /**
     * Zwraca fragment prezentujący szczegóły spotkania. Nauczyciel zobaczy dwa linki. Jeden do sprawdzania obecności,
     * a drugi do dodawania ocen.
     */
    @RequestMapping(value = "/details", method = RequestMethod.GET)
    public String getMeetingDetailsPage(@RequestParam(value = "date") @DateTimeFormat(pattern = "dd.MM.yyyy") Date date,
                                        @RequestParam(value = "id") int id, final Model model) {

        final String role = getUserRole(model);

        String view = "redirect:/";
        if (role != null) {
            if (role.equals(STUDENT_TYPE_NAME)) {
                LOG.debug("Prepare meeting detail view for user with role {}", STUDENT_TYPE_NAME);
                view = ControllerConstants.Fragments.meetingDetailsStudent;
            } else if (role.equals(TEACHER_TYPE_NAME)) {
                LOG.debug("Prepare meeting detail view for user with role {}", TEACHER_TYPE_NAME);
                view = ControllerConstants.Fragments.meetingDetailsTeacher;
            }
        }

        model.addAttribute("meetingId", id);
        model.addAttribute("date", date);

        return view;
    }

    /**
     * Zwraca fragment odpowiedzialny za wyświetlenie listy obecności.
     */
    @RequestMapping(value = "/presence", method = RequestMethod.GET)
    public String getPresence(@RequestParam(value = "date") @DateTimeFormat(pattern = "dd.MM.yyyy") Date date,
                              @RequestParam(value = "id") int id, final Model model) {

        final MeetingData meeting = meetingFacade.getMeetingById((long) id);
        PresentForm presentForm = new PresentForm();
        presentForm.setDate(new SimpleDateFormat("dd.MM.yyyy").format(date));
        presentForm.setMeetingId((long) id);

        List<StudentData> students = new ArrayList<>();
        if (meeting.getClassName() != null) {
            students = classFacade.getStudentsFromClass(meeting.getClassName());
        }

        for (StudentData student : students) {
            student.setPresent(presenceService.isStudentPresentOnMeeting(date, (long) id, student.getId()));
        }

        presentForm.setStudents(students);

        model.addAttribute("presentForm", presentForm);
        model.addAttribute("className", meeting.getClassName());
        model.addAttribute("subjectName", meeting.getSubjectName());

        meeting.setDate(date);
        model.addAttribute("meeting", meeting);

        return ControllerConstants.Fragments.presence;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String savePresents(@Valid PresentForm presentForm, final BindingResult bindingResult, final Model model) throws ParseException {
        if (bindingResult.hasErrors()) {
            return "redirect:/meetings";
        }

        List<PresentData> presentsList = new ArrayList<>();
        for (StudentData student : presentForm.getStudents()) {
            PresentData presentData = new PresentData();
            presentData.setMeetingId(presentForm.getMeetingId());
            presentData.setStudentId(student.getId());
            presentData.setPresent(student.isPresent());
            presentData.setDate(new SimpleDateFormat("dd.MM.yyyy").parse(presentForm.getDate()));

            presentsList.add(presentData);
        }

        try {
            presentFacade.saveAll(presentsList);
            model.addAttribute("success", "Dane zostały poprawnie zapisane");
        } catch (SaveItemException e) {
            model.addAttribute("error", "Dane nie zostały zapisane z powodu błędu");
            return "redirect:/meetings/save";
        }

        return "redirect:/";
    }

    private void prepareMeetings(final Model model, Date date) {

        final String role = getUserRole(model);
        final String userName = currentUserName(model);
        if (role != null) {

            model.addAttribute("days", meetingFacade.getWeeksName());
            model.addAttribute("weekDates", meetingFacade.getDatesForDay(date));
            model.addAttribute("hours", meetingFacade.getHours());
            model.addAttribute("activeWeekNumber", meetingFacade.getActiveWeekNumber());
            model.addAttribute("meetingForm", new MeetingForm());

            MeetingData[][] meetings = new MeetingData[10][7];
            if (role.equals(STUDENT_TYPE_NAME)) {
                final ClassModel classModel = studentService.getClassByStudentEmail(userName);
                if (classModel != null) {
                    model.addAttribute("className", classModel.getName());
                    meetings = meetingFacade.getMeetingsForClass(classModel.getName(), date);
                }
            } else if (role.equals(TEACHER_TYPE_NAME)) {
                meetings = meetingFacade.getMeetingsForTeacher(userName, date);
            }

            model.addAttribute("meetings", meetings);
        }
    }

    @Autowired
    public void setMeetingFacade(MeetingFacade meetingFacade) {
        this.meetingFacade = meetingFacade;
    }

    @Autowired
    public void setPresentFacade(PresentFacade presentFacade) {
        this.presentFacade = presentFacade;
    }

    @Autowired
    public void setClassFacade(ClassFacade classFacade) {
        this.classFacade = classFacade;
    }

    @Autowired
    public void setPresenceService(PresenceService presenceService) {
        this.presenceService = presenceService;
    }

    @Autowired
    public void setStudentService(StudentService studentService) {
        this.studentService = studentService;
    }
}
