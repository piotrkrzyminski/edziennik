package pl.dziennik.front.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

public class PageController {

    protected String currentUserName() {

        final Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if(authentication != null) {
            return authentication.getName();
        }

        return null;
    }
}
