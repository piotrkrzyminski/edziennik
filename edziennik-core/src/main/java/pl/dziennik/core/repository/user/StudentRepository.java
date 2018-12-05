package pl.dziennik.core.repository.user;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.dziennik.model.user.ClassModel;
import pl.dziennik.model.user.GradeModel;
import pl.dziennik.model.user.ParentModel;
import pl.dziennik.model.user.StudentModel;

import java.util.List;
import java.util.Set;

public interface StudentRepository extends JpaRepository<StudentModel, Long> {

    /**
     * Find student by email.
     *
     * @param email student email.
     * @return student with specified email or null if not found.
     */
    @Query("SELECT s FROM StudentModel s WHERE s.email = ?1")
    StudentModel findStudentByEmail(final String email);

    /**
     * Find student's class by his email.
     *
     * @param email student email.
     * @return class where student is or null if class not found.
     */
    @Query("SELECT s.classModel FROM StudentModel s WHERE s.email = ?1")
    ClassModel findClassByEmail(final String email);

    /**
     * Find student's parents by his email.
     *
     * @param email student email.
     * @return set of student's parents or empty collection if parents was not found.
     */
    @Query("SELECT s.parents FROM StudentModel s WHERE s.email = ?1")
    Set<ParentModel> findParentsByEmail(final String email);

    /**
     * Find all student's grades.
     *
     * @param email student email.
     * @return list of all student's grades.
     */
    @Query("SELECT s.grades FROM StudentModel s WHERE s.email = ?1")
    List<GradeModel> findAllGradesByEmail(final String email);
}
