package pl.dziennik.core.services.user;

import pl.dziennik.model.user.GradeModel;
import pl.dziennik.model.user.GradeSetModel;

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
}
