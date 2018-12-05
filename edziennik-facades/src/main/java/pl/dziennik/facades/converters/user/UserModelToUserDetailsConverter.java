package pl.dziennik.facades.converters.user;

import org.springframework.core.convert.converter.Converter;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;
import pl.dziennik.model.user.UserDetailsModel;
import pl.dziennik.model.user.UserModel;

import java.util.ArrayList;
import java.util.Collection;

/**
 * Conversion from {@link UserModel} to {@link UserDetails}.
 */
@Component
public class UserModelToUserDetailsConverter implements Converter<UserModel, UserDetails> {

    @Override
    public UserDetails convert(UserModel userModel) {
        UserDetailsModel userDetailsModel = new UserDetailsModel();

        if (userModel != null) {
            userDetailsModel.setUsername(userModel.getEmail());
            userDetailsModel.setEnabled(userModel.isEnabled());
            userDetailsModel.setPassword(userModel.getPassword());

            Collection<SimpleGrantedAuthority> authorities = new ArrayList<>();
            authorities.add(new SimpleGrantedAuthority(userModel.getRole().getName()));

            userDetailsModel.setAuthorities(authorities);
        }

        return userDetailsModel;
    }
}
