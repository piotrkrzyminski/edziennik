package pl.dziennik.facades.converters.impl;

import org.apache.commons.lang3.Validate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
import pl.dziennik.facades.data.MeetingHourData;
import pl.dziennik.facades.populators.Populator;
import pl.dziennik.model.MeetingHoursModel;

@Component
public class MeetingHourConverter implements Converter<MeetingHoursModel, MeetingHourData> {

    @Autowired
    private Populator<MeetingHoursModel, MeetingHourData> meetingHourDataPopulator;

    @Override
    public MeetingHourData convert(MeetingHoursModel meetingHoursModel) {
        Validate.notNull(meetingHoursModel);

        MeetingHourData meetingHourData = new MeetingHourData();
        meetingHourDataPopulator.populate(meetingHoursModel, meetingHourData);

        return meetingHourData;
    }
}
