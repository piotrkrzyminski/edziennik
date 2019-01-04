package pl.dziennik.core.services;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import pl.dziennik.model.AbstractUserModel;

public interface UserService {

    AbstractUserModel getUserByEmail(final String email) throws UsernameNotFoundException;

    UsernamePasswordAuthenticationToken authenticate(final String email, final String password);
}
