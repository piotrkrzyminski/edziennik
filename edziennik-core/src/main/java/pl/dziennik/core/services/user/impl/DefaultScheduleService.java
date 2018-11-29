package pl.dziennik.core.services.user.impl;

import com.sun.javaws.exceptions.InvalidArgumentException;
import org.apache.commons.lang3.Validate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.dziennik.core.repository.user.ScheduleRepository;
import pl.dziennik.core.services.user.ScheduleService;
import pl.dziennik.model.meetings.MeetingModel;
import pl.dziennik.model.meetings.ScheduleDayModel;
import pl.dziennik.model.meetings.ScheduleModel;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * Domyślna implementacja dla {@link pl.dziennik.core.services.user.ScheduleService}
 */
@Service
public class DefaultScheduleService implements ScheduleService {

    private static final Logger LOG = LoggerFactory.getLogger(DefaultScheduleService.class);

    @Autowired
    private ScheduleRepository scheduleRepository;

    @Override
    public ScheduleModel getScheduleForClass(String className) throws InvalidArgumentException {
        Validate.notBlank(className);

        final ScheduleModel schedule = scheduleRepository.findScheduleModelByClassName(className);
        if (schedule == null) {
            LOG.debug("No schedule found for class {}", className);
            throw new InvalidArgumentException(new String[]{"No schedule found"});
        }

        return schedule;
    }

    @Override
    public List<MeetingModel> getMeetingsForClassAndWeekDay(String className, Date date) throws InvalidArgumentException {
        Validate.notBlank(className);
        Validate.notNull(date);

        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);

        int week = calendar.get(Calendar.DAY_OF_WEEK);
        List<MeetingModel> meetings = new ArrayList<>();
        if (week >= 1 && week <= 7) {
            meetings = scheduleRepository.findMeetingsByClassNameAndWeekDay(className, week);
        }

        return meetings;
    }
}
