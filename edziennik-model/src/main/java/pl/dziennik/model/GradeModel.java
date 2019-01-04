package pl.dziennik.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

/**
 * School grade entity.
 */
@Entity
@Table(name = "grades")
@Getter
@Setter
public class GradeModel extends AbstractItemModel {

    /**
     * The student who got the grade
     */
    @ManyToOne
    @JoinColumn(name = "student_id", nullable = false)
    private StudentModel student;

    /**
     * Details information about grade like title, weight etc.
     */
    @ManyToOne
    @JoinColumn(name = "grade_set_id", nullable = false)
    private GradeSetModel gradeSet;

    /**
     * Grade value.
     */
    @Column(name = "grade", nullable = false)
    private Double grade;
}
