package pl.dziennik.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pl.dziennik.facades.ClassFacade;
import pl.dziennik.facades.GradeFacade;
import pl.dziennik.facades.MeetingFacade;
import pl.dziennik.facades.data.grades.AddGradeData;
import pl.dziennik.facades.data.grades.AddGradeSetData;
import pl.dziennik.facades.data.meetings.MeetingData;
import pl.dziennik.facades.data.user.StudentData;
import pl.dziennik.front.forms.AddGradeForm;

import javax.validation.Valid;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping(value = "/grades")
public class AddGradeComponent {

    @Autowired
    private ClassFacade classFacade;

    @Autowired
    private MeetingFacade meetingFacade;

    @Autowired
    private GradeFacade gradeFacade;

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String getView(@RequestParam(value = "date") @DateTimeFormat(pattern = "dd.MM.yyyy") Date date,
                          @RequestParam(value = "id") int id, final Model model) {

        AddGradeForm form = new AddGradeForm();
        form.setMeetingId(id);
        form.setDate(new SimpleDateFormat("dd.MM.yyyy").format(date));

        final MeetingData meeting = meetingFacade.getMeetingById((long) id);
        if (meeting != null) {
            List<StudentData> students = new ArrayList<>();
            if (meeting.getClassName() != null) {
                students = classFacade.getStudentsFromClass(meeting.getClassName());
            }
            form.setStudents(students);
        }

        model.addAttribute("addGradeForm", form);
        model.addAttribute("meetingId", id);
        model.addAttribute("date", date);

        return ControllerConstants.Fragments.addGradeFragment;
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String saveGrade(@Valid AddGradeForm addGradeForm, final BindingResult bindingResult, final Model model)
            throws ParseException {

        if (bindingResult.hasErrors()) {
            return "redirect:/";
        }

        final AddGradeSetData grade = createGrades(addGradeForm);
        gradeFacade.saveAllGrades(grade);

        return "redirect:/";
    }

    /**
     * Prepare grades data for save.
     *
     * @param addGradeForm add grade form.
     * @return list od grades to save.
     */
    private AddGradeSetData createGrades(final AddGradeForm addGradeForm) throws ParseException {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        final MeetingData meeting = meetingFacade.getMeetingById(addGradeForm.getMeetingId());

        AddGradeSetData addGradeSetData = new AddGradeSetData();
        addGradeSetData.setDate(new SimpleDateFormat("dd.MM.yyyy").parse(addGradeForm.getDate()));
        addGradeSetData.setMeetingId(addGradeForm.getMeetingId());
        addGradeSetData.setTitle(addGradeForm.getDescription());
        addGradeSetData.setWeight(addGradeForm.getWeight());
        addGradeSetData.setTeacherEmail(authentication.getName());
        addGradeSetData.setSubjectName(meeting.getSubjectName());
        addGradeSetData.setClassName(meeting.getClassName());

        List<AddGradeData> grades = new ArrayList<>();
        for (StudentData student : addGradeForm.getStudents()) {
            AddGradeData grade = new AddGradeData();
            grade.setStudentId(student.getId());
            grade.setMark(student.getGrade());

            grades.add(grade);
        }

        addGradeSetData.setGrades(grades);

        return addGradeSetData;
    }
}
