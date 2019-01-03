package pl.dziennik.model.user;

import pl.dziennik.model.AbstractItemModel;
import pl.dziennik.model.meetings.MeetingModel;

import javax.persistence.*;
import java.util.List;

/**
 * Stores school class entity.
 */
@Entity
@Table(name = "classes")
public class ClassModel extends AbstractItemModel {

    /**
     * Name of class.
     */
    @Column(name = "name", unique = true, nullable = false)
    private String name;

    /**
     * List of students assigned to this class.
     */
    @OneToMany(mappedBy = "classModel")
    private List<StudentModel> students;

    /**
     * The class teacher
     */
    @ManyToOne
    @JoinColumn(name = "teacher_id")
    private TeacherModel teacher;

    @OneToMany(mappedBy = "classModel")
    private List<GradeSetModel> gradeSet;

    /**
     * List of meetings for this class.
     */
    @OneToMany(mappedBy = "classModel")
    private List<MeetingModel> meeting;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<StudentModel> getStudents() {
        return students;
    }

    public void setStudents(List<StudentModel> students) {
        this.students = students;
    }

    public TeacherModel getTeacher() {
        return teacher;
    }

    public void setTeacher(TeacherModel teacher) {
        this.teacher = teacher;
    }

    public List<GradeSetModel> getGradeSet() {
        return gradeSet;
    }

    public void setGradeSet(List<GradeSetModel> gradeSet) {
        this.gradeSet = gradeSet;
    }

    public List<MeetingModel> getMeeting() {
        return meeting;
    }

    public void setMeeting(List<MeetingModel> meeting) {
        this.meeting = meeting;
    }
}
