package pl.dziennik.model;

import javax.persistence.*;
import java.util.List;

/**
 * Stores information's about school subject.
 */
@Entity
@Table(name = "subjects")
public class SubjectModel extends AbstractItemModel {

    /**
     * Name of subject
     */
    @Column(name = "name", unique = true, nullable = false)
    private String name;

    /**
     * Teacher conducting a subject.
     */
    @ManyToOne
    @JoinColumn(name = "teacher_id", nullable = false)
    private TeacherModel teacher;

    @OneToMany(mappedBy = "subject")
    private List<GradeSetModel> gradeSet;

    @OneToMany(mappedBy = "subject")
    private List<FinalGradeModel> finalGrades;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public List<FinalGradeModel> getFinalGrades() {
        return finalGrades;
    }

    public void setFinalGrades(List<FinalGradeModel> finalGrades) {
        this.finalGrades = finalGrades;
    }
}
