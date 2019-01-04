package pl.dziennik.core.services;

import pl.dziennik.model.FinalGradeModel;
import pl.dziennik.model.GradeModel;
import pl.dziennik.model.GradeSetModel;

import java.util.List;

public interface GradesService {

    /**
     * Find all grades for student.
     *
     * @param email student's email address.
     * @return list of all student's grades.
     */
    List<GradeModel> findGradesForStudent(String email);

    List<GradeModel> findGradesForStudentIdAndSubject(long id, String subjectName);

    void save(GradeSetModel grade);

    GradeModel findGradeById(final long id);

    void save(GradeModel gradeModel);

    void save(FinalGradeModel finalGradeModel);

    FinalGradeModel getGradeForSubjectAndStudent(final Long subjectId, final Long studentId);
}
