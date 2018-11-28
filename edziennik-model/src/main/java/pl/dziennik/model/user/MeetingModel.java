package pl.dziennik.model.user;

import pl.dziennik.model.AbstractItemModel;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "meetings")
public class MeetingModel extends AbstractItemModel {

    @Column(name = "title")
    private String title;

    @Column(name = "date")
    @Temporal(TemporalType.DATE)
    private Date date;

    @Column(name = "start_time")
    @Temporal(TemporalType.TIME)
    private Date startTime;

    @Column(name = "end_time")
    @Temporal(TemporalType.TIME)
    private Date endTime;

    @ManyToOne
    @JoinColumn(name = "teacher_id", nullable = false)
    private TeacherModel teacher;

    @ManyToOne
    @JoinColumn(name = "subject_id", nullable = false)
    private SubjectModel subject;

    @OneToOne
    @JoinColumn(name = "present_id")
    private PresentModel present;

    @ManyToOne
    @JoinColumn(name = "class_id", nullable = false)
    private ClassModel classModel;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public TeacherModel getTeacher() {
        return teacher;
    }

    public void setTeacher(TeacherModel teacher) {
        this.teacher = teacher;
    }

    public SubjectModel getSubject() {
        return subject;
    }

    public void setSubject(SubjectModel subject) {
        this.subject = subject;
    }

    public PresentModel getPresent() {
        return present;
    }

    public void setPresent(PresentModel present) {
        this.present = present;
    }

    public ClassModel getClassModel() {
        return classModel;
    }

    public void setClassModel(ClassModel classModel) {
        this.classModel = classModel;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }
}
