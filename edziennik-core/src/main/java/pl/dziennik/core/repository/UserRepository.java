package pl.dziennik.core.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.dziennik.model.AbstractUserModel;

/**
 * Repository for {@link AbstractUserModel}.
 */
public interface UserRepository extends JpaRepository<AbstractUserModel, Long> {

    /**
     * Finds user by email address.
     *
     * @param email email address.
     * @return user with specified email or null if not exists.
     */
    AbstractUserModel findByEmail(String email);
}
