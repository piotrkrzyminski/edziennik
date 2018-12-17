package pl.dziennik.facades.impl;

import org.apache.commons.lang3.Validate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import pl.dziennik.core.exceptions.ItemNotFoundException;
import pl.dziennik.core.services.schedule.ClassService;
import pl.dziennik.core.services.schedule.SubjectService;
import pl.dziennik.core.services.user.GradesService;
import pl.dziennik.core.services.user.StudentService;
import pl.dziennik.core.services.user.TeacherService;
import pl.dziennik.facades.GradeFacade;
import pl.dziennik.facades.data.grades.AddGradeData;
import pl.dziennik.facades.data.grades.AddGradeSetData;
import pl.dziennik.facades.data.grades.GradeData;
import pl.dziennik.facades.populators.Populator;
import pl.dziennik.model.meetings.SubjectModel;
import pl.dziennik.model.user.*;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Component
public class DefaultGradeFacade implements GradeFacade {

    @Autowired
    private GradesService gradesService;

    @Autowired
    private ClassService classService;

    @Autowired
    private TeacherService teacherService;

    @Autowired
    private StudentService studentService;

    @Autowired
    private SubjectService subjectService;

    @Autowired
    private Populator<GradeModel, GradeData> gradeDataPopulator;

    @Override
    public List<GradeData> getGradesForStudent(String email) {
        Validate.notBlank(email);
        final List<GradeModel> gradeModelList = gradesService.findGradesForStudent(email);

        final List<GradeData> grades = new ArrayList<>();
        for (GradeModel grade : gradeModelList) {
            GradeData gradeData = new GradeData();
            gradeDataPopulator.populate(grade, gradeData);
            grades.add(gradeData);
        }

        return grades;
    }

    @Override
    public void saveAllGrades(AddGradeSetData grades) {
        GradeSetModel gradeSetModel = createGrade(grades);
        gradesService.save(gradeSetModel);
    }

    @Override
    public List<GradeData> getGradesForStudentIdAndSubject(Long id, String subjectName) {
        final List<GradeModel> gradeModelList = gradesService.findGradesForStudentIdAndSubject(id, subjectName);
        List<GradeData> grades = new ArrayList<>();
        for(GradeModel gradeModel : gradeModelList) {
            GradeData grade = new GradeData();
            gradeDataPopulator.populate(gradeModel, grade);
            grades.add(grade);
        }

        return grades;
    }

    private GradeSetModel createGrade(AddGradeSetData gradeSetData) {
        GradeSetModel gradeSetModel = new GradeSetModel();

        final ClassModel classModel = classService.getClassForName(gradeSetData.getClassName());
        if (classModel != null) {
            gradeSetModel.setClassModel(classModel);
        }

        gradeSetModel.setDate(gradeSetData.getDate());
        gradeSetModel.setTitle(gradeSetData.getTitle());
        gradeSetModel.setWeight(gradeSetData.getWeight());

        final TeacherModel teacher = teacherService.getTeacherForEmail(gradeSetData.getTeacherEmail());
        if (teacher != null) {
            gradeSetModel.setTeacher(teacher);
        }

        final SubjectModel subject = subjectService.getSubjectForName(gradeSetData.getSubjectName());
        if (subject != null) {
            gradeSetModel.setSubject(subject);
        }

        Set<GradeModel> grades = new HashSet<>();
        for(AddGradeData gradeData : gradeSetData.getGrades()) {
            GradeModel gradeModel = new GradeModel();
            gradeModel.setGradeSet(gradeSetModel);
            if (!gradeData.getMark().equals("0")) {
                gradeModel.setGrade(Double.parseDouble(gradeData.getMark()));
            }

            gradeModel.setGradeSet(gradeSetModel);

            final StudentModel student;
            try {
                student = studentService.getStudentById(gradeData.getStudentId());
                gradeModel.setStudent(student);
            } catch (ItemNotFoundException e) {
                e.printStackTrace();
            }

            grades.add(gradeModel);
        }

        gradeSetModel.setGrades(grades);

        return gradeSetModel;
    }
}
