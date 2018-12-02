package pl.dziennik.facades.populators.meetings;

import org.apache.commons.lang3.Validate;
import org.springframework.stereotype.Component;
import pl.dziennik.facades.data.meetings.MeetingData;
import pl.dziennik.facades.populators.Populator;
import pl.dziennik.model.meetings.MeetingModel;

/**
 * Populuje dane z modelu do data.
 */
@Component
public class MeetingPopulator implements Populator<MeetingModel, MeetingData> {

    @Override
    public void populate(MeetingModel s, MeetingData t) {
        Validate.notNull(s);
        Validate.notNull(t);

        if(s.getMeetingHour() != null) {
            t.setMeetingNumber(s.getMeetingHour().getMeetingNumber());
            t.setStartTime(s.getMeetingHour().getStartTime());
            t.setEndTime(s.getMeetingHour().getEndDate());
        }

        t.setCanceled(false);

        if(s.getSubject() != null)
        t.setSubjectName(s.getSubject().getName());
    }
}
