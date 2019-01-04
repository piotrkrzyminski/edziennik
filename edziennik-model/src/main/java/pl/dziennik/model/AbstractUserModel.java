package pl.dziennik.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;

/**
 * Entity stores shared basic user data.
 */
@Entity
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
@Getter
@Setter
public abstract class AbstractUserModel extends AbstractItemModel {

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
}
