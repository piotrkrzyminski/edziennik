package pl.dziennik.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.dziennik.core.services.StudentService;
import pl.dziennik.core.services.SubjectService;
import pl.dziennik.facades.GradeFacade;
import pl.dziennik.facades.data.FinalGradeData;
import pl.dziennik.facades.data.GradeData;
import pl.dziennik.facades.data.GradeDetailsData;
import pl.dziennik.front.utils.AvgGradeCalculator;
import pl.dziennik.model.SubjectModel;
import pl.dziennik.model.StudentModel;

import java.util.*;

/**
 * Controller for meetings fragment.
 */
@Controller
@RequestMapping(value = "/grade")
public class GradesComponentController extends PageController {

    private GradeFacade gradeFacade;
    private StudentService studentService;
    private SubjectService subjectService;

    @RequestMapping(method = RequestMethod.GET)
    public String getGradeFragment(final Model model) {

        final String userEmail = currentUserName(model);
        StudentModel student = studentService.getStudentByEmail(userEmail);
        if (student != null) {
            List<GradeData> grades = gradeFacade.getGradesForStudent(userEmail);
            prepareDataForStudent(model, grades, student.getId());
        }

        return ControllerConstants.Fragments.gradesFragment;
    }

    private void prepareDataForStudent(final Model model, final List<GradeData> grades, long studentId) {
        Map<GradeData, List<GradeDetailsData>> gradeMap = new HashMap<>();

        for (GradeData grade : grades) {
            final GradeDetailsData gradeDetailsData = grade.getGradeDetails();
            if (gradeMap.get(grade) == null) {
                List<GradeDetailsData> gradeDetailsDataList = new ArrayList<>();
                gradeDetailsDataList.add(gradeDetailsData);
                gradeMap.put(grade, gradeDetailsDataList);
            } else {
                List<GradeDetailsData> gradeDetailsDataList = gradeMap.get(grade);
                gradeDetailsDataList.add(gradeDetailsData);
                gradeMap.put(grade, gradeDetailsDataList);
            }
        }

        Set<FinalGradeData> finalGradeDataHashSet = new LinkedHashSet<>();

        for (Map.Entry<GradeData, List<GradeDetailsData>> grade : gradeMap.entrySet()) {
            final SubjectModel subject = subjectService.getSubjectForName(grade.getKey().getSubjectName());
            final FinalGradeData finalGradeData = gradeFacade.getFinalGradeForSubjectAndStudent(subject.getId(), studentId);
            finalGradeDataHashSet.add(finalGradeData);
            double avg = AvgGradeCalculator.getAverageGrade(grade.getValue());
            grade.getKey().setAvgGrade(avg);
        }

        model.addAttribute("grades", gradeMap);
        model.addAttribute("finalGrades", finalGradeDataHashSet);
    }

    @Autowired
    public void setGradeFacade(GradeFacade gradeFacade) {
        this.gradeFacade = gradeFacade;
    }

    @Autowired
    public void setStudentService(StudentService studentService) {
        this.studentService = studentService;
    }

    @Autowired
    public void setSubjectService(SubjectService subjectService) {
        this.subjectService = subjectService;
    }
}
