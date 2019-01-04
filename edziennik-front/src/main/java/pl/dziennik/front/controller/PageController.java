package pl.dziennik.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.ui.Model;
import pl.dziennik.core.services.UserService;
import pl.dziennik.model.AbstractUserModel;

public class PageController {

    public static final String STUDENT_TYPE_NAME = "STUDENT";
    public static final String TEACHER_TYPE_NAME = "TEACHER";

    @Autowired
    private UserService userService;

    protected String currentUserName(final Model model) {

        final Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null) {

            AbstractUserModel user = userService.getUserByEmail(authentication.getName());

            if (user != null) {
                model.addAttribute("name", user.getFirstName() + " " + user.getSurname());
            }

            return authentication.getName();
        }

        return null;
    }

    protected String getUserRole(final Model model) {
        AbstractUserModel user = userService.getUserByEmail(currentUserName(model));

        if (user != null) {
            return user.getRole().getName();
        }

        return null;
    }
}
