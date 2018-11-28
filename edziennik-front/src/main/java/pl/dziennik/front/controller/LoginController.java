package pl.dziennik.front.controller;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value = "/login")
public class LoginController {

    /**
     * Displays login page if user is not authenticated already.
     *
     * @param request http request.
     * @param response http response.
     * @param model model.
     * @return name of login page view.
     */
    @RequestMapping(method = RequestMethod.GET)
    public String getLoginPage(final HttpServletRequest request, final HttpServletResponse response, final Model model) {
        return ControllerConstants.Pages.LoginPage;
    }

}
