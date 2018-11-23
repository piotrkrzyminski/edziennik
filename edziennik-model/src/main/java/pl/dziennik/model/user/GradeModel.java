package pl.dziennik.model.user;

import pl.dziennik.model.AbstractItemModel;

import javax.persistence.*;

@Entity
@Table(name = "grades")
public class GradeModel extends AbstractItemModel {

    @ManyToOne
    @JoinColumn(name = "student_id", nullable = false)
    private StudentModel student;

    @ManyToOne
    @JoinColumn(name = "grade_set_id", nullable = false)
    private GradeSetModel gradeSet;

    @ManyToOne
    @JoinColumn(name = "grade_value", nullable = false)
    private GradeValueModel gradeValue;

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

    public GradeValueModel getGradeValue() {
        return gradeValue;
    }

    public void setGradeValue(GradeValueModel gradeValue) {
        this.gradeValue = gradeValue;
    }
}
