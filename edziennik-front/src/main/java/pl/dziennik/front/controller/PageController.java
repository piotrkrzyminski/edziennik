package pl.dziennik.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.ui.Model;
import pl.dziennik.core.services.user.UserService;
import pl.dziennik.model.user.UserModel;

public class PageController {

    @Autowired
    private UserService userService;

    protected String currentUserName(final Model model) {

        final Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if(authentication != null) {

            UserModel user = userService.getUserByEmail(authentication.getName());

            if(user != null) {
                model.addAttribute("name", user.getFirstName() + " " + user.getSurname());
            }

            return authentication.getName();
        }

        return null;
    }
}
