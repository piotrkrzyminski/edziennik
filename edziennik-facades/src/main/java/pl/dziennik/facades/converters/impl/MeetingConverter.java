package pl.dziennik.facades.converters.impl;

import org.apache.commons.lang3.Validate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
import pl.dziennik.facades.data.meetings.MeetingData;
import pl.dziennik.facades.populators.Populator;
import pl.dziennik.model.meetings.MeetingModel;

@Component("meetingConverter")
public class MeetingConverter implements Converter<MeetingModel, MeetingData> {

    @Autowired
    private Populator<MeetingModel, MeetingData> meetingDataPopulator;

    @Override
    public MeetingData convert(MeetingModel meetingModel) {
        Validate.notNull(meetingModel);

        MeetingData meeting = new MeetingData();
        meetingDataPopulator.populate(meetingModel, meeting);

        return meeting;
    }
}
