package pl.dziennik.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "final_grade")
@Getter
@Setter
public class FinalGradeModel extends AbstractItemModel {

    @ManyToOne
    @JoinColumn(name = "subject_id")
    private SubjectModel subject;

    private double mark;

    @ManyToOne
    @JoinColumn(name = "student_id")
    private StudentModel student;
}
