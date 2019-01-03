package pl.dziennik.model.user;

import pl.dziennik.model.AbstractItemModel;

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
    private List<UserModel> users;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<UserModel> getUsers() {
        return users;
    }

    public void setUsers(List<UserModel> users) {
        this.users = users;
    }
}
