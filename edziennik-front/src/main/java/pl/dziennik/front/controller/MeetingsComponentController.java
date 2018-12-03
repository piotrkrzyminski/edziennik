package pl.dziennik.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.dziennik.core.services.user.StudentService;
import pl.dziennik.facades.MeetingFacade;
import pl.dziennik.facades.data.meetings.MeetingData;
import pl.dziennik.model.user.ClassModel;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * Controller for meetings fragment.
 */
@Controller
@RequestMapping(value = "/meetings")
public class MeetingsComponentController extends PageController {

    @Autowired
    private MeetingFacade meetingFacade;

    @Autowired
    private StudentService studentService;

    @RequestMapping(method = RequestMethod.GET)
    public String getMeetingPage(final HttpServletRequest request, final HttpServletResponse response, final Model model) {
        prepareMeetings(model);

        return ControllerConstants.Fragments.meetingFragment;
    }

    private void prepareMeetings(final Model model) {

        final String role = getUserRole(model);
        final String userName = currentUserName(model);
        if (role != null) {

            model.addAttribute("days", meetingFacade.getWeeksName());
            model.addAttribute("hours", meetingFacade.getHours());
            model.addAttribute("activeWeekNumber", meetingFacade.getActiveWeekNumber());

            List<MeetingData> meetingDataList = new ArrayList<>();
            if (role.equals(STUDENT_TYPE_NAME)) {
                final ClassModel classModel = studentService.getClassByStudentEmail(userName);
                if (classModel != null) {
                    model.addAttribute("className", classModel.getName());
                    meetingDataList = meetingFacade.getMeetingsForClass(classModel.getName());
                }
            } else if (role.equals(TEACHER_TYPE_NAME)) {
                meetingDataList = meetingFacade.getMeetingsForTeacher(userName);
            }

            MeetingData[][] meetingDataMatrix = new MeetingData[10][7];

            for(int i = 0; i < 10; i++) {
                for(int j = 0; j < 7; j++) {
                    MeetingData result = null;
                    for(MeetingData meetingData : meetingDataList ) {
                        if(meetingData.getWeekNumber()-1 == j && meetingData.getMeetingNumber()-1 == i) {
                            result = meetingData;
                        }
                    }

                    meetingDataMatrix[i][j] = result;
                }
            }

            model.addAttribute("meetings", meetingDataMatrix);
        }
    }
}
