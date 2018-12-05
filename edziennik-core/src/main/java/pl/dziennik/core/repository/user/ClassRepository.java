package pl.dziennik.core.repository.user;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.dziennik.model.user.ClassModel;
import pl.dziennik.model.user.StudentModel;

import java.util.List;

public interface ClassRepository extends JpaRepository<ClassModel, Long> {

    /**
     * Wyszukuje wszystkich uczniów przypisanych do klasy o podanej nazwie i sortuje ich rosnąco według nazwiska.
     *
     * @param name nazwa klasy.
     * @return posortowana lista uczniów danej klasy.
     */
    @Query("SELECT s FROM ClassModel c INNER JOIN c.students s ORDER BY s.surname ASC")
    List<StudentModel> findAllStudentsFromClassByName(final String name);
}
