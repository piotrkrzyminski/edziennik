package pl.dziennik.core.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.dziennik.model.GradeModel;

import java.util.List;

/**
 * Repository for {@link GradeModel}.
 */
public interface GradesRepository extends JpaRepository<GradeModel, Long> {

    /**
     * Get all grades for student with specified email address.
     *
     * @param email student's email address.
     * @return list of all grades assigned to specific student.
     */
    @Query("SELECT g FROM GradeModel g INNER JOIN g.student s WHERE s.email = ?1")
    List<GradeModel> getGradesByStudentEmail(final String email);

    /**
     * Get all grades for student with specific id.
     *
     * @param id student's id.
     * @return list of all grades assigned to specific student.
     */
    @Query("SELECT g FROM GradeModel g INNER JOIN g.student s WHERE s.id = ?1")
    List<GradeModel> getGradesByStudentId(final Long id);
}
