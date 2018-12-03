package pl.dziennik.core.repository.meetings;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.dziennik.model.meetings.MeetingHoursModel;

import java.util.List;

public interface MeetingHourRepository extends JpaRepository<MeetingHoursModel, Long> {

    @Query("SELECT m FROM MeetingHoursModel m ORDER BY m.meetingNumber ASC")
    List<MeetingHoursModel> findAllOrderByMeetingNumber();
}
