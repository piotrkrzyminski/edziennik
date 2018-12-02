package pl.dziennik.facades.converters.meetings;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
import pl.dziennik.facades.data.meetings.ScheduleDayData;
import pl.dziennik.facades.populators.Populator;
import pl.dziennik.model.meetings.ScheduleDayModel;

@Component
public class ScheduleDayConverter implements Converter<ScheduleDayModel, ScheduleDayData> {

    @Autowired
    private Populator<ScheduleDayModel, ScheduleDayData> scheduleDayDataPopulator;

    @Override
    public ScheduleDayData convert(ScheduleDayModel scheduleDayModel) {
        ScheduleDayData scheduleDayData = new ScheduleDayData();

        scheduleDayDataPopulator.populate(scheduleDayModel, scheduleDayData);

        return scheduleDayData;
    }
}
