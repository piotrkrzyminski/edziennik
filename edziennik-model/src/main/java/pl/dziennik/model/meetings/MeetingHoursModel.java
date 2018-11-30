package pl.dziennik.model.meetings;

import pl.dziennik.model.AbstractItemModel;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

/**
 * Encja przechowuje informacje na temat numeru spotkania i godzinach w jakich się odbywa.
 * Na przykład spotkanie pierwsze odbywa się w godzinach 8:00 - 8:45, kolejne od 9:00 do 9:45 itd.
 */
@Entity
@Table(name = "meeting_hours")
public class MeetingHoursModel extends AbstractItemModel {

    /**
     * numer spotkania numerowany od 1 (1 oznacza pierwsze spotkanie danego dnia).
     */
    @Column(name = "meeting_number")
    private int meetingNumber;

    /**
     * Godzina rozpoczęcia spotkania.
     */
    @Column(name = "start_time")
    @Temporal(TemporalType.TIME)
    private Date startTime;

    /**
     * Godzina zakończenia spotkania.
     */
    @Column(name = "end_time")
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
