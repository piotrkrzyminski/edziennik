package pl.dziennik.core.services.user.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import pl.dziennik.core.repository.user.UserRepository;
import pl.dziennik.core.services.user.UserService;
import pl.dziennik.model.user.RoleModel;
import pl.dziennik.model.user.UserModel;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service("userService")
public class DefaultUserService implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public UserModel getUserByEmail(String email) throws UsernameNotFoundException {

        UserModel result = userRepository.findByEmail(email);
        if (result == null) {
            throw new UsernameNotFoundException("User with email " + email + " not exist");
        }

        return result;
    }

    @Override
    public UsernamePasswordAuthenticationToken authenticate(String email, String password) {

        UserModel user = userRepository.findByEmail(email);
        if (user != null && user.getPassword().equals(password)) {
            return new UsernamePasswordAuthenticationToken(email, password, getAuthorities(user));
        }

        throw new BadCredentialsException("Email or password are incorrect");
    }

    private List<? extends GrantedAuthority> getAuthorities(final UserModel user) {
        final List<RoleModel> roles = user.getRoles();
        List<GrantedAuthority> authorities = new ArrayList<>();
        if (roles != null) {
            for (RoleModel role : roles) {
                authorities.add(new SimpleGrantedAuthority(role.getName()));
            }
        }

        return authorities;
    }
}
