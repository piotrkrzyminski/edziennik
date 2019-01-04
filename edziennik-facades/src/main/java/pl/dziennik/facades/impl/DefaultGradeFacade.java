package pl.dziennik.facades.impl;

import org.apache.commons.lang3.Validate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import pl.dziennik.core.exceptions.ItemNotFoundException;
import pl.dziennik.core.services.ClassService;
import pl.dziennik.core.services.SubjectService;
import pl.dziennik.core.services.GradesService;
import pl.dziennik.core.services.StudentService;
import pl.dziennik.core.services.TeacherService;
import pl.dziennik.facades.GradeFacade;
import pl.dziennik.facades.converters.CustomConverter;
import pl.dziennik.facades.data.*;
import pl.dziennik.model.*;

import javax.persistence.NoResultException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Component
public class DefaultGradeFacade implements GradeFacade {

    private GradesService gradesService;
    private ClassService classService;
    private TeacherService teacherService;
    private StudentService studentService;
    private SubjectService subjectService;
    private CustomConverter<GradeModel, GradeData> gradeDataCustomConverter;
    private CustomConverter<StudentModel, StudentData> studentDataCustomConverter;
    private CustomConverter<FinalGradeModel, FinalGradeData> finalGradeDataCustomConverter;

    @Override
    public List<GradeData> getGradesForStudent(String email) {
        Validate.notBlank(email);
        final List<GradeModel> gradeModelList = gradesService.findGradesForStudent(email);

        return gradeDataCustomConverter.convertAll(gradeModelList);
    }

    @Override
    public void saveAllGrades(AddGradeSetData grades) {
        GradeSetModel gradeSetModel = createGrade(grades);
        gradesService.save(gradeSetModel);
    }

    @Override
    public List<GradeData> getGradesForStudentIdAndSubject(Long id, String subjectName) {
        final List<GradeModel> gradeModelList = gradesService.findGradesForStudentIdAndSubject(id, subjectName);
        return gradeDataCustomConverter.convertAll(gradeModelList);
    }

    @Override
    public StudentData getStudentWithGrades(long studentId, long subjectId) throws NoResultException {

        try {
            final StudentModel student = studentService.getStudentById(studentId);
            final SubjectModel subject = subjectService.getSubjectForId(subjectId);
            final List<GradeModel> grades = gradesService.findGradesForStudentIdAndSubject(studentId, subject.getName());
            List<GradeData> gradeDataList = gradeDataCustomConverter.convertAll(grades);
            StudentData studentData = studentDataCustomConverter.convert(student);
            studentData.setGrades(gradeDataList);

            return studentData;
        } catch (ItemNotFoundException e) {
            throw new NoResultException("No student found for id " + studentId);
        }
    }

    @Override
    public void updateGradesForStudents(List<GradeData> grades) {
        for(GradeData grade : grades) {
            GradeModel gradeModel = gradesService.findGradeById(grade.getId());
            gradeModel.setGrade(grade.getGradeDetails().getMark());
            gradesService.save(gradeModel);
        }
    }

    @Override
    public void saveFinalGrades(List<FinalGradeData> finalGradeDataList) {
        for(FinalGradeData finalGradeData : finalGradeDataList) {
            try {
                StudentModel studentModel = studentService.getStudentById(finalGradeData.getStudentId());
                SubjectModel subjectModel = subjectService.getSubjectForId(finalGradeData.getSubjectId());
                FinalGradeModel gradeModel = new FinalGradeModel();
                gradeModel.setId(finalGradeData.getId());
                gradeModel.setMark(finalGradeData.getMark());
                gradeModel.setSubject(subjectModel);
                gradeModel.setStudent(studentModel);

                gradesService.save(gradeModel);
            } catch (ItemNotFoundException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public FinalGradeData getFinalGradeForSubjectAndStudent(long subjectId, long studentId) {
        FinalGradeModel finalGradeModel = gradesService.getGradeForSubjectAndStudent(subjectId, studentId);
        FinalGradeData finalGradeData = new FinalGradeData();
        if(finalGradeModel == null) {
            finalGradeData.setMark(0.0);
            finalGradeData.setSubjectId(subjectId);
            finalGradeData.setStudentId(studentId);
        } else {
            finalGradeData = finalGradeDataCustomConverter.convert(finalGradeModel);
        }

        return finalGradeData;
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
        for (AddGradeData gradeData : gradeSetData.getGrades()) {
            GradeModel gradeModel = new GradeModel();
            gradeModel.setGradeSet(gradeSetModel);
            gradeModel.setGrade(Double.parseDouble(gradeData.getMark()));

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

    @Autowired
    public void setGradesService(GradesService gradesService) {
        this.gradesService = gradesService;
    }

    @Autowired
    public void setClassService(ClassService classService) {
        this.classService = classService;
    }

    @Autowired
    public void setTeacherService(TeacherService teacherService) {
        this.teacherService = teacherService;
    }

    @Autowired
    public void setStudentService(StudentService studentService) {
        this.studentService = studentService;
    }

    @Autowired
    public void setSubjectService(SubjectService subjectService) {
        this.subjectService = subjectService;
    }

    @Autowired
    public void setGradeDataCustomConverter(CustomConverter<GradeModel, GradeData> gradeDataCustomConverter) {
        this.gradeDataCustomConverter = gradeDataCustomConverter;
    }

    @Autowired
    public void setStudentDataCustomConverter(CustomConverter<StudentModel, StudentData> studentDataCustomConverter) {
        this.studentDataCustomConverter = studentDataCustomConverter;
    }

    @Autowired
    public void setFinalGradeDataCustomConverter(CustomConverter<FinalGradeModel, FinalGradeData> finalGradeDataCustomConverter) {
        this.finalGradeDataCustomConverter = finalGradeDataCustomConverter;
    }
}
