package pl.dziennik.facades.converters.impl;

import org.springframework.core.convert.converter.Converter;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;
import pl.dziennik.model.UserDetailsModel;
import pl.dziennik.model.AbstractUserModel;

import java.util.ArrayList;
import java.util.Collection;

/**
 * Conversion from {@link AbstractUserModel} to {@link UserDetails}.
 */
@Component
public class UserModelToUserDetailsConverter implements Converter<AbstractUserModel, UserDetails> {

    @Override
    public UserDetails convert(AbstractUserModel abstractUserModel) {
        UserDetailsModel userDetailsModel = new UserDetailsModel();

        if (abstractUserModel != null) {
            userDetailsModel.setUsername(abstractUserModel.getEmail());
            userDetailsModel.setEnabled(abstractUserModel.isEnabled());
            userDetailsModel.setPassword(abstractUserModel.getPassword());

            Collection<SimpleGrantedAuthority> authorities = new ArrayList<>();
            authorities.add(new SimpleGrantedAuthority(abstractUserModel.getRole().getName()));

            userDetailsModel.setAuthorities(authorities);
        }

        return userDetailsModel;
    }
}
