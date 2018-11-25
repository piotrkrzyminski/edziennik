package pl.dziennik.core.services.user.impl;

import org.apache.commons.lang3.Validate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.dziennik.core.repository.user.MeetingRepository;
import pl.dziennik.core.services.user.MeetingService;
import pl.dziennik.model.user.MeetingModel;

import java.util.Date;
import java.util.List;

/**
 * Default implementation for {@link MeetingService}.
 */
@Service
public class DefaultMeetingService implements MeetingService {

    private static final Logger LOG = LoggerFactory.getLogger(DefaultMeetingService.class);

    @Autowired
    private MeetingRepository meetingRepository;

    @Override
    public List<MeetingModel> getMeetingsByDate(Date date) {
        Validate.notNull(date);

        final List<MeetingModel> meetings = meetingRepository.findMeetingsByDate(date);
        if(meetings == null) {
            LOG.debug("No meetings found in date {}" + date.toString());
        }

        return meetings;
    }

    @Override
    public List<MeetingModel> getMeetingsByClassName(String className) {
        Validate.notBlank(className);

        final List<MeetingModel> meetings = meetingRepository.findMeetingsByClassName(className);
        if(meetings == null) {
            LOG.debug("No meetings found for class with name {}", className);
        }

        return meetings;
    }
}
