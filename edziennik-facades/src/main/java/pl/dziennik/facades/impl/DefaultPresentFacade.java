package pl.dziennik.facades.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import pl.dziennik.core.exceptions.ItemNotFoundException;
import pl.dziennik.core.services.meetings.MeetingService;
import pl.dziennik.core.services.meetings.PresentService;
import pl.dziennik.core.services.user.StudentService;
import pl.dziennik.facades.PresentFacade;
import pl.dziennik.facades.data.meetings.PresentData;
import pl.dziennik.facades.exceptions.SaveItemException;
import pl.dziennik.model.meetings.MeetingModel;
import pl.dziennik.model.user.PresentModel;
import pl.dziennik.model.user.StudentModel;

@Component
public class DefaultPresentFacade implements PresentFacade {

    @Autowired
    private PresentService presentService;

    @Autowired
    private StudentService studentService;

    @Autowired
    private MeetingService meetingService;

    @Override
    public void save(PresentData presentData) throws SaveItemException {
        PresentModel presentModel = new PresentModel();

        try {
            StudentModel studentModel = studentService.getStudentById(presentData.getStudentId());
            MeetingModel meetingModel = meetingService.getMeetingById(presentData.getMeetingId());
            presentModel.setPresent(presentData.isPresent());
            presentModel.setStudent(studentModel);
            presentModel.setMeeting(meetingModel);

            presentService.save(presentModel);
        } catch (ItemNotFoundException e) {
            throw new SaveItemException("Data could not be saved");
        }
    }
}
