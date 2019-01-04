package pl.dziennik.front.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value = "/shell")
public class ShellController {

    @RequestMapping(method = RequestMethod.GET)
    public String getShellPage() {

        return ControllerConstants.Pages.Shell;
    }
}
