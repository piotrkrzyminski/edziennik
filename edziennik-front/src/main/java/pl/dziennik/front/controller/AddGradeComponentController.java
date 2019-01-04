package pl.dziennik.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.dziennik.core.services.TeacherService;
import pl.dziennik.facades.ClassFacade;
import pl.dziennik.facades.GradeFacade;
import pl.dziennik.facades.MeetingFacade;
import pl.dziennik.facades.data.*;
import pl.dziennik.front.forms.AddGradeForm;
import pl.dziennik.front.forms.StudentGradesForm;
import pl.dziennik.front.utils.AvgGradeCalculator;
import pl.dziennik.model.TeacherModel;

import javax.validation.Valid;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping(value = "/grades")
public class AddGradeComponentController extends PageController {

    private ClassFacade classFacade;
    private MeetingFacade meetingFacade;
    private GradeFacade gradeFacade;
    private TeacherService teacherService;

    @GetMapping(value = "/edit")
    public String getAllGrades(@RequestParam(required = false) Long classId, @RequestParam(required = false) Long subjectId, final Model model) {

        if (classId == null) {
            model.addAttribute("dataNotSet", true);
            model.addAttribute("classes", classFacade.findAll());

            return ControllerConstants.Fragments.setGradesEditInitData;
        }

        if (subjectId == null) {
            model.addAttribute("dataNotSet", true);
            model.addAttribute("selectedClassId", classId);
            model.addAttribute("subjects", classFacade.findSubjectsForClass(classId));

            return ControllerConstants.Fragments.setGradesEditInitData;
        }

        final String userEmail = currentUserName(model);
        TeacherModel teacher = teacherService.getTeacherForEmail(userEmail);
        if (teacher == null) {
            return "redirect:/";
        }

        StudentGradesForm studentGradesForm = new StudentGradesForm();
        final List<StudentData> students = classFacade.getStudentsFromClas(classId);
        List<StudentData> studentsWithGrades = new ArrayList<>();
        List<FinalGradeData> finalGrades = new ArrayList<>();
        for (StudentData studentData : students) {
            studentsWithGrades.add(gradeFacade.getStudentWithGrades(studentData.getId(), subjectId));
            finalGrades.add(gradeFacade.getFinalGradeForSubjectAndStudent(subjectId, studentData.getId()));
        }

        studentGradesForm.setStudents(studentsWithGrades);
        studentGradesForm.setFinalGrades(finalGrades);
        model.addAttribute("studentsGradesForm", studentGradesForm);

        return ControllerConstants.Fragments.studentGradesForSubject;
    }

    @PostMapping(value = "/edit")
    public String processGradesEdit(@ModelAttribute StudentGradesForm studentGradesForm) {

        List<GradeData> gradesToUpdate = new ArrayList<>();
        for (StudentData student : studentGradesForm.getStudents()) {
            gradesToUpdate.addAll(student.getGrades());
        }

        gradeFacade.updateGradesForStudents(gradesToUpdate);
        gradeFacade.saveFinalGrades(studentGradesForm.getFinalGrades());

        return "redirect:/";
    }

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

            Map<StudentData, List<GradeData>> gradesMap = new HashMap<>();
            for (StudentData student : students) {
                List<GradeData> grades = gradeFacade.getGradesForStudentIdAndSubject(student.getId(), meeting.getSubjectName());
                gradesMap.put(student, grades);
            }

            for (Map.Entry<StudentData, List<GradeData>> grade : gradesMap.entrySet()) {
                List<GradeDetailsData> gradeDetailsDataList = new ArrayList<>();
                for (GradeData gradeData : grade.getValue()) {
                    gradeDetailsDataList.add(gradeData.getGradeDetails());
                }
                double avg = AvgGradeCalculator.getAverageGrade(gradeDetailsDataList);
                for (GradeData gradeData : grade.getValue()) {
                    gradeData.setAvgGrade(avg);
                }
            }

            model.addAttribute("gradeMap", gradesMap);
        }

        model.addAttribute("addGradeForm", form);
        model.addAttribute("meetingId", id);
        model.addAttribute("date", date);

        return ControllerConstants.Fragments.addGradeFragment;
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String saveGrade(@Valid AddGradeForm addGradeForm, final BindingResult bindingResult)
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
            if (!student.getGrade().equals("0")) {
                AddGradeData grade = new AddGradeData();
                grade.setStudentId(student.getId());
                grade.setMark(student.getGrade());

                grades.add(grade);
            } else {
                AddGradeData grade = new AddGradeData();
                grade.setStudentId(student.getId());
                grade.setMark(String.valueOf(0));

                grades.add(grade);
            }
        }

        addGradeSetData.setGrades(grades);

        return addGradeSetData;
    }

    @Autowired
    public void setClassFacade(ClassFacade classFacade) {
        this.classFacade = classFacade;
    }

    @Autowired
    public void setMeetingFacade(MeetingFacade meetingFacade) {
        this.meetingFacade = meetingFacade;
    }

    @Autowired
    public void setGradeFacade(GradeFacade gradeFacade) {
        this.gradeFacade = gradeFacade;
    }

    @Autowired
    public void setTeacherService(TeacherService teacherService) {
        this.teacherService = teacherService;
    }
}
