package pl.dziennik.model;

import lombok.Getter;
import lombok.Setter;

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
@Getter
@Setter
public class TeacherModel extends AbstractUserModel {

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
}
