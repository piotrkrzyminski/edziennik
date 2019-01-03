package pl.dziennik.model.user;

import javax.persistence.*;
import java.util.List;
import java.util.Set;

/**
 * School student entity.
 */
@Entity
@Table(name = "Students")
public class StudentModel extends UserModel {

    /**
     * Class to which the student is registered
     */
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "class_id", nullable = false)
    private ClassModel classModel;

    /**
     * Student's parents.
     */
    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "Students_Parents",
            joinColumns = {@JoinColumn(name = "student_id")},
            inverseJoinColumns = {@JoinColumn(name = "parent_id")})
    private Set<ParentModel> parents;

    /**
     * Grades assigned to this student.
     */
    @OneToMany(mappedBy = "student")
    private List<GradeModel> grades;

    /**
     * List of presences for this student.
     */
    @OneToMany(mappedBy = "student")
    private List<PresenceModel> presents;

    public ClassModel getClassModel() {
        return classModel;
    }

    public void setClassModel(ClassModel classModel) {
        this.classModel = classModel;
    }

    public Set<ParentModel> getParents() {
        return parents;
    }

    public void setParents(Set<ParentModel> parents) {
        this.parents = parents;
    }

    public List<GradeModel> getGrades() {
        return grades;
    }

    public void setGrades(List<GradeModel> grades) {
        this.grades = grades;
    }

    public List<PresenceModel> getPresents() {
        return presents;
    }

    public void setPresents(List<PresenceModel> presents) {
        this.presents = presents;
    }
}
