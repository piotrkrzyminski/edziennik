package pl.dziennik.core.services.user;

import pl.dziennik.model.user.MeetingModel;

import java.util.Date;
import java.util.List;

public interface MeetingService {

    /**
     * Get all meetings in date.
     *
     * @param className name of class.
     * @param date date of meeting.
     * @return list of all meetings in specified date.
     */
    List<MeetingModel> getMeetingsByDateForClass(final String className, final Date date);

    /**
     * Get all meetings for class with the specified name.
     *
     * @param className name of class.
     * @return list of all meetings for class with the specified name.
     */
    List<MeetingModel> getMeetingsByClassName(final String className);
}
