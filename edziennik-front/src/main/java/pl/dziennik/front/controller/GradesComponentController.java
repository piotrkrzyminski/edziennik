package pl.dziennik.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.dziennik.core.services.user.StudentService;
import pl.dziennik.facades.GradeFacade;
import pl.dziennik.facades.data.grades.GradeData;
import pl.dziennik.facades.data.grades.GradeDetailsData;
import pl.dziennik.model.user.ClassModel;
import pl.dziennik.model.user.StudentModel;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * Controller for meetings fragment.
 */
@Controller
@RequestMapping(value = "/grades")
public class GradesComponentController extends PageController {

    @Autowired
    private GradeFacade gradeFacade;

    @Autowired
    private StudentService studentService;

    @RequestMapping(method = RequestMethod.GET)
    public String getMeetingPage(final HttpServletRequest request, final HttpServletResponse response, final Model model) {

        final String userEmail = currentUserName(model);
        StudentModel student = studentService.getStudentByEmail(userEmail);
        if(student != null) {
            List<GradeData> grades = gradeFacade.getGradesForStudent(userEmail);
            prepareDataForStudent(model, grades);
        }

        return ControllerConstants.Fragments.gradesFragment;
    }

    private void prepareDataForStudent(final Model model, final List<GradeData> grades) {
        Map<String, List<GradeData>> gradeMap = grades.stream().collect(Collectors.groupingBy(GradeData::getSubjectName));

        model.addAttribute("grades", gradeMap);
    }
}
