package pl.dziennik.core.services.meetings.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.dziennik.core.repository.meetings.MeetingHourRepository;
import pl.dziennik.core.services.meetings.MeetingHourService;
import pl.dziennik.model.meetings.MeetingHoursModel;

import java.util.List;

@Service
public class DefaultMeetingHoursService implements MeetingHourService {

    @Autowired
    private MeetingHourRepository meetingHourRepository;

    @Override
    public List<MeetingHoursModel> getAll() {
        return meetingHourRepository.findAllOrderByMeetingNumber();
    }
}
