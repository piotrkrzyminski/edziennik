package pl.dziennik.facades.populators.impl;

import org.springframework.stereotype.Component;
import pl.dziennik.facades.data.MeetingHourData;
import pl.dziennik.facades.populators.Populator;
import pl.dziennik.model.MeetingHoursModel;

import java.text.SimpleDateFormat;

@Component
public class MeetingHourPopulator implements Populator<MeetingHoursModel, MeetingHourData> {

    @Override
    public void populate(MeetingHoursModel s, MeetingHourData t) {
        t.setStartTime(new SimpleDateFormat("HH:mm").format(s.getStartTime()));
        t.setEndTime(new SimpleDateFormat("HH:mm").format(s.getEndDate()));
    }
}
