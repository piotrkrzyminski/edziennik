package pl.dziennik.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

/**
 * Stores school class entity.
 */
@Entity
@Table(name = "classes")
@Getter
@Setter
public class ClassModel extends AbstractItemModel {

    /**
     * Name of class.
     */
    @Column(name = "name", unique = true, nullable = false)
    private String name;

    /**
     * List of students assigned to this class.
     */
    @OneToMany(mappedBy = "classModel")
    private List<StudentModel> students;

    /**
     * The class teacher
     */
    @ManyToOne
    @JoinColumn(name = "teacher_id")
    private TeacherModel teacher;

    @OneToMany(mappedBy = "classModel")
    private List<GradeSetModel> gradeSet;

    /**
     * List of meetings for this class.
     */
    @OneToMany(mappedBy = "classModel")
    private List<MeetingModel> meeting;
}
