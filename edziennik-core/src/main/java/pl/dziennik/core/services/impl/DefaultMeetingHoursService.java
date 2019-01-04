package pl.dziennik.core.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.dziennik.core.repository.MeetingHourRepository;
import pl.dziennik.core.services.MeetingHourService;
import pl.dziennik.model.MeetingHoursModel;

import java.util.List;

/**
 * Default implementation of {@link MeetingHourService}
 */
@Service
public class DefaultMeetingHoursService implements MeetingHourService {

    @Autowired
    private MeetingHourRepository meetingHourRepository;

    @Override
    public List<MeetingHoursModel> getAll() {
        return meetingHourRepository.findAllOrderByMeetingNumber();
    }
}
