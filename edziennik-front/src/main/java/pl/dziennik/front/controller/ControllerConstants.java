package pl.dziennik.front.controller;

public interface ControllerConstants {

    interface Pages {
        String _PREFIX = "/pages";

        String Shell = _PREFIX + "/shell";
        String LoginPage = _PREFIX + "/login";

        String HomePage = _PREFIX + "/home";
    }

    interface Fragments {
        String _PREFIX = "/fragments";

        String meetingFragment = _PREFIX + "/meetings :: meetings";
        String gradesFragment = _PREFIX + "/grades :: grades";
        String meetingDetailsTeacher = _PREFIX + "/presence :: presence";
        String meetingDetailsStudent = _PREFIX + "/meetingsDetailsStudent :: details";
    }
}
