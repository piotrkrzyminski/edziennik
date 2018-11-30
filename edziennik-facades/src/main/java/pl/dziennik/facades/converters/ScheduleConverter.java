package pl.dziennik.facades.converters;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
import pl.dziennik.facades.data.ScheduleData;
import pl.dziennik.facades.populators.Populator;
import pl.dziennik.model.meetings.ScheduleModel;

@Component
public class ScheduleConverter implements Converter<ScheduleModel, ScheduleData> {

    @Autowired
    private Populator<ScheduleModel, ScheduleData> scheduleDataPopulator;
    @Override
    public ScheduleData convert(ScheduleModel scheduleModel) {
        ScheduleData scheduleData = new ScheduleData();

        scheduleDataPopulator.populate(scheduleModel, scheduleData);

        return scheduleData;
    }
}
