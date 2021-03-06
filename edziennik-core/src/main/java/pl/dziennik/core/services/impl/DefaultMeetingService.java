package pl.dziennik.core.services.impl;

import org.apache.commons.lang3.Validate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.dziennik.core.repository.MeetingRepository;
import pl.dziennik.core.services.MeetingService;
import pl.dziennik.model.MeetingModel;

import java.util.List;

/**
 * Default implementation of {@link MeetingService}.
 */
@Service
public class DefaultMeetingService implements MeetingService {

    private static final Logger LOG = LoggerFactory.getLogger(DefaultMeetingService.class);

    @Autowired
    private MeetingRepository meetingRepository;

    @Override
    public MeetingModel getMeetingById(Long id) {
        MeetingModel meeting = meetingRepository.getMeetingById(id);

        if (meeting == null) {
            LOG.debug("No meeting found for id {}", id);
        }

        return meeting;
    }

    @Override
    public List<MeetingModel> getMeetingsByClassName(String name) {
        Validate.notBlank(name);

        final List<MeetingModel> meetings = meetingRepository.findMeetingsByClassName(name);
        if (meetings.isEmpty()) {
            LOG.debug("No meetings found for class {}", name);
        }

        return meetings;
    }

    @Override
    public List<MeetingModel> getMeetingsByTeacherEmail(String email) {
        Validate.notBlank(email);

        final List<MeetingModel> meetings = meetingRepository.findMeetingsByTeacherEmail(email);
        if (meetings.isEmpty()) {
            LOG.debug("No meetings found for teacher with email {}", email);
        }

        return meetings;
    }
}
