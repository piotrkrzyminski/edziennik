package pl.dziennik.facades;

import pl.dziennik.facades.data.meetings.ScheduleData;

public interface MeetingFacade {

    ScheduleData getScheduleByClass(final String className);
}
