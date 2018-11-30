package pl.dziennik.model.meetings;

import pl.dziennik.model.AbstractItemModel;

import javax.persistence.*;
import java.util.List;

/**
 * Encja odpowiadająca dniowi tygodnia. Dla każdego dnia tygodnia przechowywana jest lista spotkań.
 * Na przykład Poniedziałek, Wtorek itd.
 */
@Entity
@Table(name = "week_days")
public class ScheduleDayModel extends AbstractItemModel {

    /**
     * Dzień tygodnia: 1 to Poniedziałek, 7 to Niedziela.
     */
    @Column(name = "week_number")
    private int numberOfWeek;

    @OneToMany(mappedBy = "day", fetch = FetchType.EAGER)
    private List<MeetingModel> meetings;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "schedule_id")
    private ScheduleModel schedule;

    public int getNumberOfWeek() {
        return numberOfWeek;
    }

    public void setNumberOfWeek(int numberOfWeek) {
        this.numberOfWeek = numberOfWeek;
    }

    public List<MeetingModel> getMeetings() {
        return meetings;
    }

    public void setMeetings(List<MeetingModel> meetings) {
        this.meetings = meetings;
    }
}