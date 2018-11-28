package pl.dziennik.model.user;

import pl.dziennik.model.AbstractItemModel;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.List;

@Entity
@Table(name = "grade_values")
public class GradeValueModel extends AbstractItemModel {

    @Column(name = "name")
    private double name;

    @OneToMany(mappedBy = "gradeValue")
    private List<GradeModel> grades;

    public double getName() {
        return name;
    }

    public void setName(double name) {
        this.name = name;
    }
}
