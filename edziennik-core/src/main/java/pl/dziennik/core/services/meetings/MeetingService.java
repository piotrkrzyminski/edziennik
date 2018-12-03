package pl.dziennik.core.services.meetings;

import pl.dziennik.model.meetings.MeetingModel;

import java.util.List;

public interface MeetingService {

    List<MeetingModel> getMeetingsByClassName(final String name);

    List<MeetingModel> getMeetingsByTeacherEmail(final String email);
}
