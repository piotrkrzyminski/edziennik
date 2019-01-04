package pl.dziennik.core.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.dziennik.model.MeetingHoursModel;

import java.util.List;

/**
 * Repository for {@link MeetingHoursModel}.
 */
public interface MeetingHourRepository extends JpaRepository<MeetingHoursModel, Long> {

    /**
     * Get all meeting numbers and order it by time.
     *
     * @return ordered list of all meeting times.
     */
    @Query("SELECT m FROM MeetingHoursModel m ORDER BY m.meetingNumber ASC")
    List<MeetingHoursModel> findAllOrderByMeetingNumber();
}
