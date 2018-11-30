package pl.dziennik.model.meetings;

import pl.dziennik.model.AbstractItemModel;
import pl.dziennik.model.user.GradeSetModel;
import pl.dziennik.model.user.TeacherModel;

import javax.persistence.*;
import java.util.List;

/**
 * Encja opisująca przedmiot szkolny. Na przykład matematyka, język polski itd.
 */
@Entity
@Table(name = "subjects")
public class SubjectModel extends AbstractItemModel {

    /**
     * Nazwa przedmiotu. Na przykład matematyka
     */
    @Column(name = "name")
    private String name;

    /**
     * Identyfikator nauczyciela prowadzącego przedmiot.
     */
    @ManyToOne
    @JoinColumn(name = "teacher_id", nullable = false)
    private TeacherModel teacher;

    @OneToMany(mappedBy = "subject")
    private List<GradeSetModel> gradeSet;

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
}
