package pl.dziennik.core.repository.meetings;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.dziennik.model.user.PresentModel;

import java.util.Date;

public interface PresentRepository extends JpaRepository<PresentModel, Long> {

    /**
     * Sprawdza czy student o podanym id był obecny na zajęciach danego dnia i na danym spotkaniu.
     *
     * @param date data spotkania.
     * @param meetingId id spotkania.
     * @param studentId id studenta.
     * @return true if studens was on meeting or false if not.
     */
    @Query("SELECT p FROM PresentModel p INNER JOIN p.meeting m INNER JOIN p.student s WHERE p.date = ?1 AND m.id = ?2 AND s.id = ?3")
    PresentModel findIsStudentPresent(final Date date, final Long meetingId, final Long studentId);
}
