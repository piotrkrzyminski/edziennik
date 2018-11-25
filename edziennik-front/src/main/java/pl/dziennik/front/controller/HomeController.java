package pl.dziennik.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.dziennik.core.services.user.MeetingService;
import pl.dziennik.core.services.user.StudentService;
import pl.dziennik.core.services.user.UserService;
import pl.dziennik.model.user.ClassModel;
import pl.dziennik.model.user.MeetingModel;
import pl.dziennik.model.user.StudentModel;
import pl.dziennik.model.user.UserModel;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping(value = "/")
public class HomeController extends PageController {

    @Autowired
    private MeetingService meetingService;

    @Autowired
    private StudentService studentService;

    @RequestMapping(method = RequestMethod.GET)
    public String getHomePage(final HttpServletRequest request, final HttpServletResponse response, final Model model) {

        prepareMeetingData(model);

        return ControllerConstants.Pages.HomePage;
    }

    private void prepareMeetingData(final Model model) {
        final String userEmail = currentUserName();
        if(userEmail == null) {
            return;
        }

        StudentModel student = studentService.getStudentByEmail(userEmail);
        if(student != null) {
            final ClassModel classModel = studentService.getClassByStudentEmail(student.getEmail());
            if(classModel != null) {
                model.addAttribute("meetings", meetingService.getMeetingsByClassName(classModel.getName()));
            }
        }
    }
}
