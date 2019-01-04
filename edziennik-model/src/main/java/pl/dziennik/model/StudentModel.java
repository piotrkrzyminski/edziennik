package pl.dziennik.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;
import java.util.Set;

/**
 * School student entity.
 */
@Entity
@Table(name = "Students")
@Getter
@Setter
public class StudentModel extends AbstractUserModel {

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
    private Set<ParentModelAbstract> parents;

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

    @OneToMany(mappedBy = "student")
    private List<FinalGradeModel> finalGrades;
}
