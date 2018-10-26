package pl.dziennik.front.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value = "/")
public class HomeController {

    @RequestMapping(method = RequestMethod.GET)
    public String getHomePage(final HttpServletRequest request, final HttpServletResponse response, final Model model) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

        return ControllerConstants.Pages.HomePage;
    }
}
