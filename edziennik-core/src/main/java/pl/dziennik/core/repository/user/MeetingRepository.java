package pl.dziennik.core.repository.user;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.dziennik.model.user.MeetingModel;

import java.util.Date;
import java.util.List;

public interface MeetingRepository extends JpaRepository<MeetingModel, Long> {

    /**
     * Find all meetings in specified date.
     *
     * @param date date of meetings.
     * @return list of meetings in specified date or empty list if no meetings found.
     */
    @Query("SELECT m FROM MeetingModel m WHERE m.date = ?1")
    List<MeetingModel> findMeetingsByDate(final Date date);

    /**
     * Find all meetings for class with specified name.
     *
     * @param className name of class.
     * @return list of all meetings for class with specified name.
     */
    @Query("SELECT m FROM MeetingModel m INNER JOIN m.classModel c WHERE c.name = ?1")
    List<MeetingModel> findMeetingsByClassName(final String className);
}
