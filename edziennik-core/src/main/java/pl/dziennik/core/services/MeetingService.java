package pl.dziennik.core.services;

import pl.dziennik.model.MeetingModel;

import java.util.List;

public interface MeetingService {

    MeetingModel getMeetingById(final Long id);

    List<MeetingModel> getMeetingsByClassName(final String name);

    List<MeetingModel> getMeetingsByTeacherEmail(final String email);
}
