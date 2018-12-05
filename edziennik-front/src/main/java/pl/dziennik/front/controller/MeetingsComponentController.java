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
import pl.dziennik.core.services.user.StudentService;
import pl.dziennik.facades.ClassFacade;
import pl.dziennik.facades.MeetingFacade;
import pl.dziennik.facades.data.meetings.MeetingData;
import pl.dziennik.facades.data.user.StudentData;
import pl.dziennik.front.forms.MeetingForm;
import pl.dziennik.model.user.ClassModel;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

    @Autowired
    private MeetingFacade meetingFacade;

    @Autowired
    private ClassFacade classFacade;

    @Autowired
    private StudentService studentService;

    /**
     * Zwraca komponent z danymi dotyczącymi spotkań, które odbywają się w tygodniu dla dnia podanego w parametrze.
     * Jeżeli data nie jest podana to zwraca dla aktualnego dnia.
     *
     * @param date     dzień dla którego należy znaleźć spotkania.
     * @param request  http request.
     * @param response http response.
     * @param model    model.
     * @return widok komponentu spotkań.
     */
    @RequestMapping(method = RequestMethod.GET)
    public String getMeetingPage(@RequestParam("date") @DateTimeFormat(pattern = "dd-MM-yyyy") Optional<Date> date,
                                 final HttpServletRequest request, final HttpServletResponse response, final Model model) {

        Date seachDate = new Date();
        if (date.isPresent()) {
            seachDate = date.get();
        }

        prepareMeetings(model, seachDate);

        return ControllerConstants.Fragments.meetingFragment;
    }

    /**
     * Pobiera, waliduje i zwraca widok dla spotkania w zależności od tego jaki typ użytkownika wywołał akcję.
     * Nauczyciel zobaczy listę uczniów, którzy powinni pojawić się na zajęciach z możliwością modyfikacji czy dana
     * osoba jest obecna lub nie. Uczeń będzie mógł obejrzeć statystyki dotyczące danego spotkania, oceny itp.
     *
     * @param meetingForm formularz spotkania.
     * @param model       model.
     * @return widok szczegółów spotkania określony na podstawie typu użytkownika.
     */
    @RequestMapping(method = RequestMethod.POST)
    public String getMeetingDetailsPage(@Valid MeetingForm meetingForm, final Model model, final BindingResult bindingResult) throws ParseException {
        if (bindingResult.hasErrors()) {
            LOG.debug("Meetings form has errors");
            return "redirect:/";
        }

        int col = meetingForm.getColumn();
        int row = meetingForm.getRow();
        Date date = new SimpleDateFormat("dd.MM.yyyy").parse(meetingForm.getDate());
        final String role = getUserRole(model);
        final String userName = currentUserName(model);

        String view = "redirect:/";
        if (role != null) {
            MeetingData[][] meetings = new MeetingData[10][7];
            if (role.equals(STUDENT_TYPE_NAME)) {
                LOG.debug("Prepare meeting detail view for user with role {}", STUDENT_TYPE_NAME);
                final ClassModel classModel = studentService.getClassByStudentEmail(userName);
                meetings = meetingFacade.getMeetingsForClass(classModel.getName(), date);
                view = ControllerConstants.Fragments.meetingDetailsStudent;
            } else if (role.equals(TEACHER_TYPE_NAME)) {
                LOG.debug("Prepare meeting detail view for user with role {}", TEACHER_TYPE_NAME);
                meetings = meetingFacade.getMeetingsForTeacher(userName, date);
                view = ControllerConstants.Fragments.meetingDetailsTeacher;

                List<StudentData> students = new ArrayList<>();
                if (meetings[row][col] != null && meetings[row][col].getClassName() != null) {
                    students = classFacade.getStudentsFromClass(meetings[row][col].getClassName());
                }
                model.addAttribute("students", students);
            }

            MeetingData choosenMeeting = meetings[row][col];
            model.addAttribute(choosenMeeting);
        }

        return view;
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
}
