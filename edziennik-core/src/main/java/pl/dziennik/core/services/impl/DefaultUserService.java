package pl.dziennik.core.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import pl.dziennik.core.repository.UserRepository;
import pl.dziennik.core.services.UserService;
import pl.dziennik.model.RoleModel;
import pl.dziennik.model.AbstractUserModel;

import java.util.ArrayList;
import java.util.List;

@Service("userService")
public class DefaultUserService implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public AbstractUserModel getUserByEmail(String email) throws UsernameNotFoundException {

        AbstractUserModel result = userRepository.findByEmail(email);
        if (result == null) {
            throw new UsernameNotFoundException("User with email " + email + " not exist");
        }

        return result;
    }

    @Override
    public UsernamePasswordAuthenticationToken authenticate(String email, String password) {

        AbstractUserModel user = userRepository.findByEmail(email);
        if (user != null && user.getPassword().equals(password)) {
            return new UsernamePasswordAuthenticationToken(email, password, getAuthorities(user));
        }

        throw new BadCredentialsException("Email or password are incorrect");
    }

    private List<? extends GrantedAuthority> getAuthorities(final AbstractUserModel user) {
        final RoleModel role = user.getRole();
        List<GrantedAuthority> authorities = new ArrayList<>();
        if (role != null) {
            authorities.add(new SimpleGrantedAuthority(role.getName()));
        }

        return authorities;
    }
}
