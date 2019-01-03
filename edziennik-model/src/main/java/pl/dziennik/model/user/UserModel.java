package pl.dziennik.model.user;

import pl.dziennik.model.AbstractItemModel;

import javax.persistence.*;
import java.util.Date;

/**
 * Entity stores shared basic user data.
 */
@Entity
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
public abstract class UserModel extends AbstractItemModel {

    /**
     * First name of user.
     */
    @Column(name = "first_name", nullable = false)
    private String firstName;

    /**
     * Second name
     */
    @Column(name = "second_name")
    private String secondName;

    /**
     * User's surname.
     */
    @Column(name = "surname", nullable = false)
    private String surname;

    /**
     * User's pesel.
     */
    @Column(name = "pesel", nullable = false)
    private String pesel;

    /**
     * Birth date of user.
     */
    @Column(name = "birth_date")
    @Temporal(TemporalType.DATE)
    private Date birthDate;

    /**
     * User's email.
     */
    @Column(name = "email", nullable = false)
    private String email;

    /**
     * User's password.
     */
    @Column(name = "password", nullable = false)
    private String password;

    /**
     * User's role.
     */
    @ManyToOne
    @JoinColumn(name = "role_id", nullable = false)
    private RoleModel role;

    private boolean enabled;

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getSecondName() {
        return secondName;
    }

    public void setSecondName(String secondName) {
        this.secondName = secondName;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getPesel() {
        return pesel;
    }

    public void setPesel(String pesel) {
        this.pesel = pesel;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public RoleModel getRole() {
        return role;
    }

    public void setRole(RoleModel role) {
        this.role = role;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }
}
