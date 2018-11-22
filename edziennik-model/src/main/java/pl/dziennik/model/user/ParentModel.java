package pl.dziennik.model.user;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import java.util.Set;

@Entity
@Table(name = "Parents")
public class ParentModel extends UserModel {

    @ManyToMany(mappedBy = "parents")
    private Set<StudentModel> childrens;

    public Set<StudentModel> getChildrens() {
        return childrens;
    }

    public void setChildrens(Set<StudentModel> childrens) {
        this.childrens = childrens;
    }


}
