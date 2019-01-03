package pl.dziennik.model.user;

import pl.dziennik.model.AbstractItemModel;

import javax.persistence.*;

/**
 * School grade entity.
 */
@Entity
@Table(name = "grades")
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

    public StudentModel getStudent() {
        return student;
    }

    public void setStudent(StudentModel student) {
        this.student = student;
    }

    public GradeSetModel getGradeSet() {
        return gradeSet;
    }

    public void setGradeSet(GradeSetModel gradeSet) {
        this.gradeSet = gradeSet;
    }

    public Double getGrade() {
        return grade;
    }

    public void setGrade(Double grade) {
        this.grade = grade;
    }
}
