package pl.dziennik.core.services.meetings.impl;

import org.apache.commons.lang3.Validate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.dziennik.core.repository.meetings.PresentRepository;
import pl.dziennik.core.services.meetings.PresenceService;
import pl.dziennik.model.user.PresenceModel;

import java.util.Date;

@Service
public class DefaultPresenceService implements PresenceService {

    @Autowired
    private PresentRepository presentRepository;

    @Override
    public void save(PresenceModel present) {
        Validate.notNull(present);
        presentRepository.save(present);
    }

    @Override
    public boolean isStudentPresentOnMeeting(Date date, Long meetingId, Long studentId) {
        Validate.notNull(date);
        Validate.notNull(meetingId);
        Validate.notNull(studentId);

        PresenceModel present =  presentRepository.findIsStudentPresent(date, meetingId, studentId);
        if(present == null) {
            return false;
        }

        return present.isPresent();
    }
}
