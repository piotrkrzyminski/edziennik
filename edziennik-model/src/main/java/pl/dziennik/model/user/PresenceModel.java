package pl.dziennik.model.user;

import pl.dziennik.model.AbstractItemModel;
import pl.dziennik.model.meetings.MeetingModel;

import javax.persistence.*;
import java.util.Date;

/**
 * Presence entity.
 */
@Entity
@Table(name = "presents")
public class PresenceModel extends AbstractItemModel {

    /**
     * Is student was present on meeting.
     */
    @Column(name = "is_present", nullable = false)
    private boolean present;

    @Column(name = "date", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date date;

    @ManyToOne
    @JoinColumn(name = "student_id", nullable = false)
    private StudentModel student;

    @ManyToOne
    @JoinColumn(name = "meeting_id", nullable = false)
    private MeetingModel meeting;

    public boolean isPresent() {
        return present;
    }

    public void setPresent(boolean present) {
        this.present = present;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public StudentModel getStudent() {
        return student;
    }

    public void setStudent(StudentModel student) {
        this.student = student;
    }

    public MeetingModel getMeeting() {
        return meeting;
    }

    public void setMeeting(MeetingModel meeting) {
        this.meeting = meeting;
    }
}
