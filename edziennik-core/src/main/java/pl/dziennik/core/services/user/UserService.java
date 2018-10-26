package pl.dziennik.core.services.user;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import pl.dziennik.model.user.UserModel;

public interface UserService {

    UserModel getUserByEmail(final String email) throws UsernameNotFoundException;

    UsernamePasswordAuthenticationToken authenticate(final String email, final String password);
}
