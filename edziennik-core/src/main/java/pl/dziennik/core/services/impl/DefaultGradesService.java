package pl.dziennik.core.services.impl;

import org.apache.commons.lang3.Validate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.dziennik.core.repository.*;
import pl.dziennik.core.services.GradesService;
import pl.dziennik.model.SubjectModel;
import pl.dziennik.model.FinalGradeModel;
import pl.dziennik.model.GradeModel;
import pl.dziennik.model.GradeSetModel;
import pl.dziennik.model.StudentModel;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

/**
 * Default implementation of {@link GradesService}
 */
@Service
public class DefaultGradesService implements GradesService {

    private static final Logger LOG = LoggerFactory.getLogger(DefaultGradesService.class);

    private GradesRepository gradesRepository;
    private GradeSetRepository gradeSetRepository;
    private FinalGradesRepository finalGradesRepository;
    private SubjectRepository subjectRepository;
    private StudentRepository studentRepository;

    @Override
    public List<GradeModel> findGradesForStudent(String email) {
        Validate.notBlank(email);

        final List<GradeModel> grades = gradesRepository.getGradesByStudentEmail(email);
        if (grades.isEmpty()) {
            LOG.debug("No grades found for user with email {}", email);
        }

        return grades;
    }

    @Override
    public List<GradeModel> findGradesForStudentIdAndSubject(long id, String subjectName) {
        final List<GradeModel> grades = gradesRepository.getGradesByStudentId(id);
        List<GradeModel> result = new ArrayList<>();
        for(GradeModel grade : grades) {
            if(grade.getGradeSet().getSubject().getName().equals(subjectName)) {
                result.add(grade);
            }
        }

        return result;
    }

    @Override
    public void save(GradeSetModel grade) {
        gradeSetRepository.save(grade);
        gradesRepository.saveAll(grade.getGrades());
    }

    @Override
    public GradeModel findGradeById(long id) {
        final Optional<GradeModel> result = gradesRepository.findById(id);
        if(result.isPresent()) {
            return result.get();
        }

        return null;
    }

    @Override
    public void save(GradeModel gradeModel) {
        gradesRepository.save(gradeModel);
    }

    @Override
    public void save(FinalGradeModel finalGradeModel) {
        finalGradesRepository.save(finalGradeModel);
    }

    @Override
    public FinalGradeModel getGradeForSubjectAndStudent(Long subjectId, Long studentId) {
        Optional<SubjectModel> subject = subjectRepository.findById(subjectId);
        Optional<StudentModel> student = studentRepository.findById(studentId);

        if(subject.isPresent() && student.isPresent()) {
            return finalGradesRepository.getGradeForSubjectAndStudnet(subject.get(), student.get());
        }

        return null;
    }

    @Autowired
    public void setGradesRepository(GradesRepository gradesRepository) {
        this.gradesRepository = gradesRepository;
    }

    @Autowired
    public void setGradeSetRepository(GradeSetRepository gradeSetRepository) {
        this.gradeSetRepository = gradeSetRepository;
    }

    @Autowired
    public void setFinalGradesRepository(FinalGradesRepository finalGradesRepository) {
        this.finalGradesRepository = finalGradesRepository;
    }

    @Autowired
    public void setSubjectRepository(SubjectRepository subjectRepository) {
        this.subjectRepository = subjectRepository;
    }

    @Autowired
    public void setStudentRepository(StudentRepository studentRepository) {
        this.studentRepository = studentRepository;
    }
}
