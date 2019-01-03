package pl.dziennik.model.user;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import java.util.Set;

/**
 * School student parent entity.
 */
@Entity
@Table(name = "Parents")
public class ParentModel extends UserModel {

    /**
     * Childrens of this parent.
     */
    @ManyToMany(mappedBy = "parents")
    private Set<StudentModel> childrens;

    public Set<StudentModel> getChildrens() {
        return childrens;
    }

    public void setChildrens(Set<StudentModel> childrens) {
        this.childrens = childrens;
    }
}
