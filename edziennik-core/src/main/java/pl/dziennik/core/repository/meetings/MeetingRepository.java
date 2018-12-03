package pl.dziennik.core.repository.meetings;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.dziennik.model.meetings.MeetingModel;

import java.util.List;

public interface MeetingRepository extends JpaRepository<MeetingModel, Long> {

    /**
     * Wyszukuje terminarz spotkań dla klasy o podanym identyfikatorze.
     *
     * @param className identyfikator klasy.
     * @return terminarz spotkań dla podanej klasy.
     */
    @Query("SELECT m FROM MeetingModel m INNER JOIN m.classModel c WHERE c.name = ?1")
    List<MeetingModel> findMeetingsByClassName(final String className);

    /**
     * Wyszukuje wszystkie spotkania które prowadzi nauczyciel o podanym adresie email.
     *
     * @param email adres email nauczyciela.
     * @return lista wszystkich spotkań które prowadzi wybrany nauczyciel.
     */
    @Query("SELECT m FROM MeetingModel m INNER JOIN m.teacher t WHERE t.email = ?1")
    List<MeetingModel> findMeetingsByTeacherEmail(final String email);
}
