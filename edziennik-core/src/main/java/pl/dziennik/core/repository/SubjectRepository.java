package pl.dziennik.core.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.dziennik.model.SubjectModel;
import pl.dziennik.model.TeacherModel;

import java.util.List;

/**
 * Repository for {@link SubjectModel}.
 */
public interface SubjectRepository extends JpaRepository<SubjectModel, Long> {

    /**
     * Get all subjects for teacher.
     *
     * @param teacher teacher
     * @return list of all subjects for teacher.
     */
    @Query("SELECT s FROM SubjectModel s WHERE s.teacher = ?1")
    List<SubjectModel> findByTeacher(final TeacherModel teacher);

    /**
     * Get subject by it's name.
     *
     * @param name name of subject.
     * @return subject with specified name or null if not exists.
     */
    @Query("SELECT s FROM SubjectModel s WHERE s.name = ?1")
    SubjectModel findSubjectByName(final String name);

    /**
     * Get subject by id.
     *
     * @param id subject id.
     * @return subject with specified id or null if not found.
     */
    @Query("SELECT s FROM SubjectModel s WHERE s.id = ?1")
    SubjectModel findSubjectById(final long id);
}
