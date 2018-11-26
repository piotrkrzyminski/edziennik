package pl.dziennik.facades.populators;

import org.springframework.stereotype.Component;
import pl.dziennik.facades.data.MeetingData;
import pl.dziennik.model.i18n.Weeks;
import pl.dziennik.model.user.MeetingModel;

import java.util.Calendar;

/**
 * Populates meeting data.
 */
@Component
public class MeetingPopulator implements Populator<MeetingModel, MeetingData> {

    @Override
    public void populate(MeetingModel s, MeetingData t) {
        t.setTitle(s.getTitle());
        t.setDate(s.getDate());
        t.setStartTime(s.getStartTime());
        t.setClassName(s.getClassModel().getName());
        t.setEndTime(s.getEndTime());

        if(t.getDate() != null) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(t.getDate());
            int dayOfWeek = calendar.get(Calendar.DAY_OF_WEEK);
            t.setWeekName(Weeks.values()[dayOfWeek - 1].toString());
        }
    }
}
