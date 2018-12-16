package pl.dziennik.core.repository.schedule;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.dziennik.model.meetings.SubjectModel;
import pl.dziennik.model.user.TeacherModel;

import java.util.List;

public interface SubjectRepository extends JpaRepository<SubjectModel, Long> {

    /**
     * Zwraca wszystkie przedmioty prowadzone przez nauczyciela.
     *
     * @param teacher nauczyciel.
     * @return lista przedmiotów które prowadzi nauczyciel.
     */
    @Query("SELECT s FROM SubjectModel s WHERE s.teacher = ?1")
    List<SubjectModel> findByTeacher(final TeacherModel teacher);
}
