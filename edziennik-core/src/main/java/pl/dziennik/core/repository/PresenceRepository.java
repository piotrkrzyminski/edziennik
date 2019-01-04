package pl.dziennik.core.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.dziennik.model.PresenceModel;

import java.util.Date;

/**
 * Repository for {@link PresenceModel}
 */
public interface PresenceRepository extends JpaRepository<PresenceModel, Long> {

    /**
     * Checks presence for student by his id on specified date and meeting.
     *
     * @param date      date of meeting.
     * @param meetingId meeting id.
     * @param studentId student id.
     * @return true if student was on meeting or false if not.
     */
    @Query("SELECT p FROM PresenceModel p INNER JOIN p.meeting m INNER JOIN p.student s WHERE p.date = ?1 AND m.id = ?2 AND s.id = ?3")
    PresenceModel findIsStudentPresent(final Date date, final Long meetingId, final Long studentId);
}
