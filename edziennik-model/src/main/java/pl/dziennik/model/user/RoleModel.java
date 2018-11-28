package pl.dziennik.model.user;

import pl.dziennik.model.AbstractItemModel;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "Roles")
public class RoleModel extends AbstractItemModel {

    @Column(name = "name")
    private String name;

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
