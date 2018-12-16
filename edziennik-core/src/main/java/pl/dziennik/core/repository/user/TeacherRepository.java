package pl.dziennik.core.repository.user;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.dziennik.model.user.TeacherModel;

public interface TeacherRepository extends JpaRepository<TeacherModel, Long> {

    /**
     * Find teacher by email.
     *
     * @param email teacher's email.
     * @return teacher with specified email or null if not found.
     */
    @Query("SELECT t FROM TeacherModel t WHERE t.email = ?1")
    TeacherModel findTeacherByEmail(final String email);
}
