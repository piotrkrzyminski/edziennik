package pl.dziennik.core.repository.user;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.dziennik.model.user.GradeModel;
import pl.dziennik.model.user.GradeSetModel;

import java.util.List;

public interface GradesRepository extends JpaRepository<GradeModel, Long> {

    /**
     * Get all grader for student with specified email address.
     *
     * @param email student's email address.
     * @return list of all grades assigned to specific student.
     */
    @Query("SELECT g FROM GradeModel g INNER JOIN g.student s WHERE s.email = ?1")
    List<GradeModel> getGradesByStudentEmail(final String email);
}
