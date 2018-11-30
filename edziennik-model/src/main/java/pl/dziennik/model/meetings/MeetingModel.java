package pl.dziennik.model.meetings;

import pl.dziennik.model.AbstractItemModel;

import javax.persistence.*;

/**
 * Encja przechująca informacje na temat spotkania takie jak tego data i z jakiego przedmiotu.
 */
@Entity
@Table(name = "meetings")
public class MeetingModel extends AbstractItemModel {

    /**
     * Przechowuje informacje o numerze spotkania, godzinie rozpoczęcia i zakończenia.
     */
    @ManyToOne
    @JoinColumn(name = "meeting_hour_id")
    private MeetingHoursModel meetingHour;

    /**
     * Identyfikator przedmiotu, z którego ma odbyć się spotkanie.
     */
    @ManyToOne
    @JoinColumn(name = "subject_id")
    private SubjectModel subject;

    /**
     * Dzień tygodnia w jakim odbywa się spotkanie.
     */
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "schedule_day_id")
    private ScheduleDayModel day;

    public MeetingHoursModel getMeetingHour() {
        return meetingHour;
    }

    public void setMeetingHour(MeetingHoursModel meetingHour) {
        this.meetingHour = meetingHour;
    }

    public SubjectModel getSubject() {
        return subject;
    }

    public void setSubject(SubjectModel subject) {
        this.subject = subject;
    }

    public ScheduleDayModel getDay() {
        return day;
    }

    public void setDay(ScheduleDayModel day) {
        this.day = day;
    }
}
