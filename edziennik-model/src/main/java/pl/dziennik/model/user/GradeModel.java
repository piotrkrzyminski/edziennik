package pl.dziennik.model.user;

import pl.dziennik.model.AbstractItemModel;

import javax.persistence.*;

@Entity
@Table(name = "grades")
public class GradeModel extends AbstractItemModel {

    @Column(name = "mark")
    private int mark;

    @ManyToOne
    @JoinColumn(name = "student_id", nullable = false)
    private StudentModel student;

    @ManyToOne
    @JoinColumn(name = "gradeSet_id", nullable = false)
    private GradeSetModel gradeSet;

    public int getMark() {
        return mark;
    }

    public void setMark(int mark) {
        this.mark = mark;
    }

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


}
