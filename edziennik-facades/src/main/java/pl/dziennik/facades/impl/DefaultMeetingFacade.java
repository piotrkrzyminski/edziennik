package pl.dziennik.facades.impl;

import com.sun.javaws.exceptions.InvalidArgumentException;
import org.apache.commons.lang3.Validate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
import pl.dziennik.core.services.user.ScheduleService;
import pl.dziennik.facades.MeetingFacade;
import pl.dziennik.facades.data.meetings.ScheduleData;
import pl.dziennik.model.meetings.ScheduleModel;

/**
 * Default implementation for {@link MeetingFacade}.
 */
@Component
public class DefaultMeetingFacade implements MeetingFacade {

    private static final Logger LOG = LoggerFactory.getLogger(DefaultMeetingFacade.class);

    @Autowired
    private ScheduleService scheduleService;

    @Autowired
    private Converter<ScheduleModel, ScheduleData> scheduleDataConverter;

    @Override
    public ScheduleData getScheduleByClass(String className) {
        Validate.notBlank(className);

        try {
            final ScheduleModel scheduleModel = scheduleService.getScheduleForClass(className);

            return scheduleDataConverter.convert(scheduleModel);
        } catch (InvalidArgumentException e) {
            e.printStackTrace();
            return null;
        }
    }
}
