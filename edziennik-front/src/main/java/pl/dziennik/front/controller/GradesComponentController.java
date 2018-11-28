package pl.dziennik.front.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Controller for meetings fragment.
 */
@Controller
@RequestMapping(value = "/grades")
public class GradesComponentController extends PageController {

    @RequestMapping(method = RequestMethod.GET)
    public String getMeetingPage(final HttpServletRequest request, final HttpServletResponse response, final Model model) {

        return ControllerConstants.Fragments.gradesFragment;
    }
}
