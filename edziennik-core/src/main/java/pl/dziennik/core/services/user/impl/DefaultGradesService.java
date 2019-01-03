package pl.dziennik.core.services.user.impl;

import org.apache.commons.lang3.Validate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.dziennik.core.repository.user.GradeSetRepository;
import pl.dziennik.core.repository.user.GradesRepository;
import pl.dziennik.core.services.user.GradesService;
import pl.dziennik.model.user.GradeModel;
import pl.dziennik.model.user.GradeSetModel;

import java.util.ArrayList;
import java.util.List;

@Service
public class DefaultGradesService implements GradesService {

    private static final Logger LOG = LoggerFactory.getLogger(DefaultGradesService.class);

    @Autowired
    private GradesRepository gradesRepository;

    @Autowired
    private GradeSetRepository gradeSetRepository;

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
        return gradesRepository.findById(id).get();
    }

    @Override
    public void save(GradeModel gradeModel) {
        gradesRepository.save(gradeModel);
    }
}
