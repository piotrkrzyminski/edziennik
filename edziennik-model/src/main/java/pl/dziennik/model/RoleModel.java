package pl.dziennik.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.List;

/**
 * Spring security role entity.
 */
@Entity
@Table(name = "Roles")
@Getter
@Setter
public class RoleModel extends AbstractItemModel {

    /**
     * name of role.
     */
    @Column(name = "name")
    private String name;

    /**
     * List of users with this role.
     */
    @OneToMany(mappedBy = "role")
    private List<AbstractUserModel> users;
}
