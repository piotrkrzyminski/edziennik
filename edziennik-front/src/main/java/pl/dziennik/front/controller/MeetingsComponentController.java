package pl.dziennik.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.dziennik.core.services.user.StudentService;
import pl.dziennik.facades.MeetingFacade;
import pl.dziennik.model.user.ClassModel;
import pl.dziennik.model.user.StudentModel;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Arrays;

/**
 * Controller for meetings fragment.
 */
@Controller
@RequestMapping(value = "/meetings")
public class MeetingsComponentController extends PageController {

    @Autowired
    private MeetingFacade meetingFacade;

    @Autowired
    private StudentService studentService;

    @RequestMapping(method = RequestMethod.GET)
    public String getMeetingPage(final HttpServletRequest request, final HttpServletResponse response, final Model model) {
        prepareMeetingData(model);

        return ControllerConstants.Fragments.meetingFragment;
    }

    private void prepareMeetingData(final Model model) {
        final String userEmail = currentUserName(model);
        if(userEmail == null) {
            return;
        }

        StudentModel student = studentService.getStudentByEmail(userEmail);
        if(student != null) {
            final ClassModel classModel = studentService.getClassByStudentEmail(student.getEmail());
            if(classModel != null) {
                model.addAttribute("meetings", meetingFacade.getMeetingsForClass(classModel.getName()));
                model.addAttribute("startHours", Arrays.asList("08:00", "09:00", "10:00", "11:00", "12:00", "01:00", "02:00"));
            }
        }
    }
}
