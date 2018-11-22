package pl.dziennik.model.user;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "Teachers")
public class TeacherModel extends UserModel {

    @OneToMany(mappedBy = "teacher")
    private Set<ClassModel> classModel;

    @OneToMany(mappedBy = "teacher")
    private Set<SubjectModel> subjects;

    @OneToMany(mappedBy = "teacher")
    private List<GradeSetModel> grades;

    public Set<ClassModel> getClassModel() {
        return classModel;
    }

    public void setClassModel(Set<ClassModel> classModel) {
        this.classModel = classModel;
    }

    public Set<SubjectModel> getSubjects() {
        return subjects;
    }

    public void setSubjects(Set<SubjectModel> subjects) {
        this.subjects = subjects;
    }

    public List<GradeSetModel> getGrades() {
        return grades;
    }

    public void setGrades(List<GradeSetModel> grades) {
        this.grades = grades;
    }


}
