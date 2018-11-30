package pl.dziennik.facades;

import pl.dziennik.facades.data.MeetingData;
import pl.dziennik.facades.data.ScheduleData;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface MeetingFacade {

    ScheduleData getScheduleByClass(final String className);
}
