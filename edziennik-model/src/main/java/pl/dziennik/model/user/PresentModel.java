package pl.dziennik.model.user;

import pl.dziennik.model.AbstractItemModel;
import pl.dziennik.model.meetings.MeetingModel;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "presents")
public class PresentModel extends AbstractItemModel {

    @Column(name = "is_present")
    private boolean present;

    @Column(name = "date")
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
