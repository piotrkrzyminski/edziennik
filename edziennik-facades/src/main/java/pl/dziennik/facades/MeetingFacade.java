package pl.dziennik.facades;

import pl.dziennik.facades.data.meetings.MeetingData;
import pl.dziennik.facades.data.meetings.MeetingHourData;

import java.util.List;

public interface MeetingFacade {

    List<MeetingData> getMeetingsForClass(final String className);

    List<MeetingData> getMeetingsForTeacher(final String email);

    List<String> getWeeksName();

    List<MeetingHourData> getHours();

    int getActiveWeekNumber();
}
