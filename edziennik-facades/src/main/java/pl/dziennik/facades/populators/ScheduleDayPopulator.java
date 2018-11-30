package pl.dziennik.facades.populators;

import org.apache.commons.lang3.Validate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import pl.dziennik.facades.data.MeetingData;
import pl.dziennik.facades.data.ScheduleDayData;
import pl.dziennik.facades.enums.WeekNameEnum;
import pl.dziennik.model.meetings.MeetingModel;
import pl.dziennik.model.meetings.ScheduleDayModel;

import java.util.ArrayList;
import java.util.List;

/**
 * Populuje dane z modelu do data.
 */
@Component
public class ScheduleDayPopulator implements Populator<ScheduleDayModel, ScheduleDayData> {

    @Autowired
    private Populator<MeetingModel, MeetingData> modelMeetingDataPopulator;

    @Override
    public void populate(ScheduleDayModel s, ScheduleDayData t) {
        Validate.notNull(s);
        Validate.notNull(t);

        t.setMeetings(getMeetings(s));
        t.setCanceled(false);
        t.setWeekName(getWeekName(s.getNumberOfWeek()));
        t.setWeekNumber(s.getNumberOfWeek());
    }

    private List<MeetingData> getMeetings(ScheduleDayModel s) {
        final List<MeetingData> meetingDataList = new ArrayList<>();
        for (MeetingModel meeting : s.getMeetings()) {
            MeetingData meetingData = new MeetingData();
            modelMeetingDataPopulator.populate(meeting, meetingData);
            meetingDataList.add(meetingData);
        }

        return meetingDataList;
    }

    private String getWeekName(int numerOfWeek) {
        WeekNameEnum[] weeks = WeekNameEnum.values();

        return weeks[numerOfWeek-1].toString();
    }
}
