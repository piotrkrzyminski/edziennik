package pl.dziennik.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;

/**
 * Stores detailed information about grade.
 */
@Entity
@Table(name = "gradesSet")
@Getter
@Setter
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
}
