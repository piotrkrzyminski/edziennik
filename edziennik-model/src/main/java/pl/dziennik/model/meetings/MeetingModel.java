package pl.dziennik.model.meetings;

import pl.dziennik.model.AbstractItemModel;
import pl.dziennik.model.user.ClassModel;
import pl.dziennik.model.user.TeacherModel;

import javax.persistence.*;

/**
 * Encja przechująca informacje na temat spotkania takie jak tego data i z jakiego przedmiotu.
 */
@Entity
@Table(name = "meetings")
public class MeetingModel extends AbstractItemModel {

    @Column(name = "week_number")
    private int weekNumber;

    @ManyToOne
    @JoinColumn(name = "subject_id")
    private SubjectModel subject;

    @ManyToOne
    @JoinColumn(name = "class_id")
    private ClassModel classModel;

    @ManyToOne
    @JoinColumn(name = "teacher_id")
    private TeacherModel teacher;

    @ManyToOne
    @JoinColumn(name = "meeting_hour_id")
    private MeetingHoursModel meetingHour;

    public int getWeekNumber() {
        return weekNumber;
    }

    public void setWeekNumber(int weekNumber) {
        this.weekNumber = weekNumber;
    }

    public SubjectModel getSubject() {
        return subject;
    }

    public void setSubject(SubjectModel subject) {
        this.subject = subject;
    }

    public ClassModel getClassModel() {
        return classModel;
    }

    public void setClassModel(ClassModel classModel) {
        this.classModel = classModel;
    }

    public TeacherModel getTeacher() {
        return teacher;
    }

    public void setTeacher(TeacherModel teacher) {
        this.teacher = teacher;
    }

    public MeetingHoursModel getMeetingHour() {
        return meetingHour;
    }

    public void setMeetingHour(MeetingHoursModel meetingHour) {
        this.meetingHour = meetingHour;
    }
}
