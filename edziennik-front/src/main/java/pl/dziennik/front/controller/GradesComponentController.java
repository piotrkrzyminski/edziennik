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
import pl.dziennik.model.user.StudentModel;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
        if (student != null) {
            List<GradeData> grades = gradeFacade.getGradesForStudent(userEmail);
            prepareDataForStudent(model, grades);
        }

        return ControllerConstants.Fragments.gradesFragment;
    }

    private void prepareDataForStudent(final Model model, final List<GradeData> grades) {
        Map<GradeData, List<GradeDetailsData>> gradeMap = new HashMap<>();

        for (GradeData grade : grades) {
            GradeDetailsData gradeDetailsData = grade.getGradeDetails();

            // Jezeli w mapie nie ma jeszcze wpisu dla danego przedmiotu do stworz pamiec na nowa liste ocen
            if (gradeMap.get(grade) == null) {
                List<GradeDetailsData> gradeDetailsDataList = new ArrayList<>();
                gradeDetailsDataList.add(gradeDetailsData);
                gradeMap.put(grade, gradeDetailsDataList);
            } else {
                // dodaj ocene do listy istniejacych
                List<GradeDetailsData> gradeDetailsDataList = gradeMap.get(grade);
                gradeDetailsDataList.add(gradeDetailsData);
                gradeMap.put(grade, gradeDetailsDataList);
            }
        }

        for (Map.Entry<GradeData, List<GradeDetailsData>> grade : gradeMap.entrySet()) {
            double avg = getAverageGrade(grade.getValue());
            grade.getKey().setAvgGrade(avg);
        }

        model.addAttribute("grades", gradeMap);
    }

    /**
     * Calculates average grade for list of grades.
     *
     * @param grades list of grades.
     * @return average value for specified grades.
     */
    private double getAverageGrade(List<GradeDetailsData> grades) {
        double sum = 0;
        double count = 0;

        for (GradeDetailsData grade : grades) {
            sum += (grade.getMark() * grade.getWeight());
            count += grade.getWeight();
        }

        return sum / count;
    }
}
