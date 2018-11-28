package pl.dziennik.core.repository.user;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.dziennik.model.user.UserModel;

import java.util.List;

public interface UserRepository extends JpaRepository<UserModel, Long> {

    UserModel findByEmail(String email);
}
