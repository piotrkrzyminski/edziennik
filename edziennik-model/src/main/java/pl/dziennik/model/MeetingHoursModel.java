package pl.dziennik.model;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

/**
 * Stores information's about schedule hours.
 */
@Entity
@Table(name = "meeting_hours")
public class MeetingHoursModel extends AbstractItemModel {

    /**
     * Number of meeting in a day.
     */
    @Column(name = "meeting_number", unique = true, nullable = false)
    private int meetingNumber;

    /**
     * meeting start time.
     */
    @Column(name = "start_time", nullable = false)
    @Temporal(TemporalType.TIME)
    private Date startTime;

    /**
     * meeting end time.
     */
    @Column(name = "end_time", nullable = false)
    @Temporal(TemporalType.TIME)
    private Date endDate;

    @OneToMany(mappedBy = "meetingHour", fetch = FetchType.EAGER)
    private List<MeetingModel> meetings;

    public int getMeetingNumber() {
        return meetingNumber;
    }

    public void setMeetingNumber(int meetingNumber) {
        this.meetingNumber = meetingNumber;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public List<MeetingModel> getMeetings() {
        return meetings;
    }

    public void setMeetings(List<MeetingModel> meetings) {
        this.meetings = meetings;
    }
}
