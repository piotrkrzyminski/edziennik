package pl.dziennik.core.services.meetings;

import pl.dziennik.model.meetings.MeetingHoursModel;

import java.util.List;

public interface MeetingHourService {

    List<MeetingHoursModel> getAll();
}
