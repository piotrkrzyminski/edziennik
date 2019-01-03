package pl.dziennik.model.user;

import pl.dziennik.model.meetings.SubjectModel;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.List;
import java.util.Set;

/**
 * Teacher entity.
 */
@Entity
@Table(name = "Teachers")
public class TeacherModel extends UserModel {

    /**
     * Class whose guardian is the teacher.
     */
    @OneToMany(mappedBy = "teacher")
    private Set<ClassModel> classModel;

    /**
     * Subject that the teacher leads
     */
    @OneToMany(mappedBy = "teacher")
    private List<SubjectModel> subjects;

    /**
     * Grades created by this teacher.
     */
    @OneToMany(mappedBy = "teacher")
    private List<GradeSetModel> grades;

    public Set<ClassModel> getClassModel() {
        return classModel;
    }

    public void setClassModel(Set<ClassModel> classModel) {
        this.classModel = classModel;
    }

    public List<SubjectModel> getSubjects() {
        return subjects;
    }

    public void setSubjects(List<SubjectModel> subjects) {
        this.subjects = subjects;
    }

    public List<GradeSetModel> getGrades() {
        return grades;
    }

    public void setGrades(List<GradeSetModel> grades) {
        this.grades = grades;
    }


}
