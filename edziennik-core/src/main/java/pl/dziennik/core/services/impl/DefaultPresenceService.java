package pl.dziennik.core.services.impl;

import org.apache.commons.lang3.Validate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.dziennik.core.repository.PresenceRepository;
import pl.dziennik.core.services.PresenceService;
import pl.dziennik.model.PresenceModel;

import java.util.Date;

/**
 * Default implementation of {@link PresenceService}.
 */
@Service
public class DefaultPresenceService implements PresenceService {

    @Autowired
    private PresenceRepository presenceRepository;

    @Override
    public void save(PresenceModel present) {
        Validate.notNull(present);
        presenceRepository.save(present);
    }

    @Override
    public boolean isStudentPresentOnMeeting(Date date, Long meetingId, Long studentId) {
        Validate.notNull(date);
        Validate.notNull(meetingId);
        Validate.notNull(studentId);

        PresenceModel present =  presenceRepository.findIsStudentPresent(date, meetingId, studentId);
        if(present == null) {
            return false;
        }

        return present.isPresent();
    }
}
