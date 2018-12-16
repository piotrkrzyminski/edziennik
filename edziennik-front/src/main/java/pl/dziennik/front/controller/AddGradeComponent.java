package pl.dziennik.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pl.dziennik.facades.ClassFacade;
import pl.dziennik.facades.MeetingFacade;
import pl.dziennik.facades.data.meetings.MeetingData;
import pl.dziennik.facades.data.user.StudentData;
import pl.dziennik.front.forms.AddGradeForm;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping(value = "/grades/add")
public class AddGradeComponent {

    @Autowired
    private ClassFacade classFacade;

    @Autowired
    private MeetingFacade meetingFacade;

    @RequestMapping(method = RequestMethod.GET)
    public String getView(@RequestParam(value = "date") @DateTimeFormat(pattern = "dd.MM.yyyy") Date date,
                          @RequestParam(value = "id") int id, final Model model) {

        AddGradeForm form = new AddGradeForm();
        form.setMeetingId(id);
        form.setDate(date);

        final MeetingData meeting = meetingFacade.getMeetingById((long) id);
        if(meeting != null) {
            List<StudentData> students = new ArrayList<>();
            if (meeting.getClassName() != null) {
                students = classFacade.getStudentsFromClass(meeting.getClassName());
            }
            form.setStudents(students);
        }

        model.addAttribute("addGradeForm", form);

        return ControllerConstants.Fragments.addGradeFragment;
    }

    @RequestMapping(method = RequestMethod.POST)
    private String saveGrades(@Valid AddGradeForm addGradeForm, final BindingResult bindingResult, final Model model) {

        return "redirect:/";
    }
}
