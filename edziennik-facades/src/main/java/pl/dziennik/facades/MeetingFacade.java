package pl.dziennik.facades;

import pl.dziennik.facades.data.MeetingData;

import java.util.Date;
import java.util.List;
import java.util.Map;

public interface MeetingFacade {

    /**
     * Get all meetings for specified class.
     *
     * @param className name of class.
     * @return sorted map of all meetings where key is date of meeting.
     */
    Map<Date, List<MeetingData>> getMeetingsForClass(final String className);

    /**
     * Get all meetings for specified class in selected day.
     *
     * @param className name of class.
     * @param date date of meeting.
     * @return sorted map of all meetings where key is date of meeting.
     */
    Map<Date, List<MeetingData> > getMeetingsByDate(final String className, final Date date);
}
