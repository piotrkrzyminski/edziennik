package pl.dziennik.model.user;

import pl.dziennik.model.AbstractItemModel;
import pl.dziennik.model.meetings.SubjectModel;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;

/**
 * Stores detailed information about grade.
 */
@Entity
@Table(name = "gradesSet")
public class GradeSetModel extends AbstractItemModel {

    /**
     * Title of grade
     */
    @Column(name = "title", nullable = false)
    private String title;

    /**
     * Weight of grade.
     */
    @Column(name = "weight", nullable = false)
    private double weight;

    /**
     * Date of grade.
     */
    @Column(name = "date", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date date;

    /**
     * Teacher whose created grade.
     */
    @ManyToOne
    @JoinColumn(name = "teacher_id", nullable = false)
    private TeacherModel teacher;

    /**
     * Class which grade is assigned.
     */
    @ManyToOne
    @JoinColumn(name = "class_id", nullable = false)
    private ClassModel classModel;

    /**
     * School subject on which the assessment was issued.
     */
    @ManyToOne
    @JoinColumn(name = "subject_id", nullable = false)
    private SubjectModel subject;

    /**
     * List of grades assigned to this type of grade.
     */
    @OneToMany(mappedBy = "gradeSet")
    private Set<GradeModel> grades;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
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

    public ClassModel getClassModel() {
        return classModel;
    }

    public void setClassModel(ClassModel classModel) {
        this.classModel = classModel;
    }

    public SubjectModel getSubject() {
        return subject;
    }

    public void setSubject(SubjectModel subject) {
        this.subject = subject;
    }

    public Set<GradeModel> getGrades() {
        return grades;
    }

    public void setGrades(Set<GradeModel> grades) {
        this.grades = grades;
    }
}
