package pl.dziennik.facades;

import pl.dziennik.facades.data.meetings.MeetingData;
import pl.dziennik.facades.data.meetings.MeetingHourData;

import java.util.Date;
import java.util.List;

public interface MeetingFacade {

    MeetingData getMeetingById(Long id);

    MeetingData[][] getMeetingsForClass(final String className, Date date);

    MeetingData[][] getMeetingsForTeacher(final String email, Date date);

    List<String> getWeeksName();

    List<MeetingHourData> getHours();

    int getActiveWeekNumber();

    List<Date> getDatesForDay(Date date);
}
