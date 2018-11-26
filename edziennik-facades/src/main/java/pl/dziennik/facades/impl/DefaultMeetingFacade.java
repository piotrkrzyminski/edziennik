package pl.dziennik.facades.impl;

import org.apache.commons.lang3.Validate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
import pl.dziennik.core.services.user.MeetingService;
import pl.dziennik.facades.MeetingFacade;
import pl.dziennik.facades.data.MeetingData;
import pl.dziennik.model.user.MeetingModel;

import java.text.SimpleDateFormat;
import java.util.*;
import java.util.stream.Collector;
import java.util.stream.Collectors;

/**
 * Default implementation for {@link MeetingFacade}.
 */
@Component
public class DefaultMeetingFacade implements MeetingFacade {

    private static final Logger LOG = LoggerFactory.getLogger(DefaultMeetingFacade.class);

    @Autowired
    private MeetingService meetingService;

    @Autowired
    private Converter<MeetingModel, MeetingData> meetingModelConverter;

    @Override
    public Map<Date, List<MeetingData>> getMeetingsForClass(String className) {
        Validate.notBlank(className);

        final List<MeetingModel> meetings = meetingService.getMeetingsByClassName(className);
        final Map<Date, List<MeetingData>> meetingsMap = convertMeetingsToMap(meetings);
        if(meetingsMap.isEmpty()) {
            LOG.debug("No meetings found");
        }

        return meetingsMap;
    }

    @Override
    public Map<Date, List<MeetingData>> getMeetingsByDate(String className, Date date) {
        Validate.notBlank(className);
        Validate.notNull(date);

        final List<MeetingModel> meetings = meetingService.getMeetingsByDateForClass(className, date);
        final Map<Date, List<MeetingData>> meetingsMap = convertMeetingsToMap(meetings);
        if(meetingsMap.isEmpty()) {
            LOG.debug("No meetings found");
        }

        return meetingsMap;
    }

    /**
     * Converts list of meetings to sorted map.
     *
     * @param meetings list of meetings to convert.
     * @return map of sorted meetings.
     */
    private Map<Date, List<MeetingData>> convertMeetingsToMap(List<MeetingModel> meetings) {
        List<MeetingData> meetingDataList = new ArrayList<>();
        for(MeetingModel meetingsModel : meetings) {
            final MeetingData meetingData = meetingModelConverter.convert(meetingsModel);
            if(meetingData != null) {
                meetingDataList.add(meetingData);
            }
        }

        return new TreeMap<>(meetingDataList.stream().collect(Collectors.groupingBy(MeetingData::getDate)));
    }
}
