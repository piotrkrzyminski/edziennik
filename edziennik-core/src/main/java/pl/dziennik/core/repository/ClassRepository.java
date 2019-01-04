package pl.dziennik.core.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.dziennik.model.ClassModel;
import pl.dziennik.model.StudentModel;

import java.util.List;

/**
 * Repository for {@link ClassModel}.
 */
public interface ClassRepository extends JpaRepository<ClassModel, Long> {

    /**
     * Search for all students belonging to class with specific name.
     *
     * @param name name of class.
     * @return list of all students belonging to class with name from parameter.
     */
    @Query("SELECT s FROM ClassModel c INNER JOIN c.students s WHERE c.name = ?1 ORDER BY s.surname ASC")
    List<StudentModel> findAllStudentsFromClassByName(final String name);

    /**
     * Search for all students belonging to class with specific id.
     *
     * @param classId id of class.
     * @return list of all students belonging to class with id from parameter.
     */
    @Query("SELECT s FROM ClassModel c INNER JOIN c.students s WHERE c.id = ?1 ORDER BY s.surname ASC")
    List<StudentModel> findAllStudentsFromClassById(final long classId);

    /**
     * Search for class using unique class name parameter.
     *
     * @param name name of class.
     * @return class with specific name or null if not exists.
     */
    @Query("SELECT c FROM ClassModel c WHERE c.name = ?1")
    ClassModel findClassByName(final String name);
}
