package pl.dziennik.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;

/**
 * Presence entity.
 */
@Entity
@Table(name = "presents")
@Getter
@Setter
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
}
