package pl.dziennik.facades.populators.meetings;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import pl.dziennik.facades.data.meetings.ScheduleData;
import pl.dziennik.facades.data.meetings.ScheduleDayData;
import pl.dziennik.facades.populators.Populator;
import pl.dziennik.model.meetings.ScheduleDayModel;
import pl.dziennik.model.meetings.ScheduleModel;

import java.util.ArrayList;
import java.util.List;

@Component
public class SchedulePopulator implements Populator<ScheduleModel, ScheduleData> {

    @Autowired
    private Populator<ScheduleDayModel, ScheduleDayData> scheduleDayPopulator;

    @Override
    public void populate(ScheduleModel s, ScheduleData t) {
        t.setScheduleDays(getScheduleDays(s));
    }

    private List<ScheduleDayData> getScheduleDays(ScheduleModel s) {
        final List<ScheduleDayData> scheduleDayDataList = new ArrayList<>();
        for (ScheduleDayModel scheduleDayModel : s.getScheduleDays()) {
            final ScheduleDayData scheduleDayData = new ScheduleDayData();
            scheduleDayPopulator.populate(scheduleDayModel, scheduleDayData);

            scheduleDayDataList.add(scheduleDayData);
        }

        return scheduleDayDataList;
    }
}
