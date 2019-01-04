package pl.dziennik.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import java.util.Set;

/**
 * School student parent entity.
 */
@Entity
@Table(name = "Parents")
@Getter
@Setter
public class ParentModelAbstract extends AbstractUserModel {

    /**
     * Childrens of this parent.
     */
    @ManyToMany(mappedBy = "parents")
    private Set<StudentModel> childrens;
}
