package pl.dziennik.model.meetings;

import pl.dziennik.model.AbstractItemModel;
import pl.dziennik.model.user.ClassModel;

import javax.persistence.*;
import java.util.List;

/**
 * Encja odpowiadająca planowi zajęć. Każdy terminarz przypisany jest do konkretnej klasy.
 */
@Entity
@Table(name = "schedules")
public class ScheduleModel extends AbstractItemModel {

    /**
     * Identyfikator klasy dla którego jest terminarz.
     */
    @ManyToOne
    @JoinColumn(name = "class_id")
    private ClassModel classModel;

    @OneToMany(mappedBy = "schedule", fetch = FetchType.EAGER)
    private List<ScheduleDayModel> scheduleDays;

    public ClassModel getClassModel() {
        return classModel;
    }

    public void setClassModel(ClassModel classModel) {
        this.classModel = classModel;
    }

    public List<ScheduleDayModel> getScheduleDays() {
        return scheduleDays;
    }

    public void setScheduleDays(List<ScheduleDayModel> scheduleDays) {
        this.scheduleDays = scheduleDays;
    }
}
