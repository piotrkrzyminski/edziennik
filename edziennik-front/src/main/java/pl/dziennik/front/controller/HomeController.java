package pl.dziennik.front.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value = "/")
public class HomeController extends PageController {

    @RequestMapping(method = RequestMethod.GET)
    public String getHomePage(final Model model) {
        currentUserName(model);

        return ControllerConstants.Pages.HomePage;
    }
}
