package pl.dziennik.facades.populators.meetings;

import org.apache.commons.lang3.Validate;
import org.springframework.stereotype.Component;
import pl.dziennik.facades.data.meetings.MeetingData;
import pl.dziennik.facades.enums.WeekNameEnum;
import pl.dziennik.facades.populators.Populator;
import pl.dziennik.model.meetings.MeetingModel;

import java.util.Calendar;
import java.util.Date;

/**
 * Populuje dane z modelu do data.
 */
@Component
public class MeetingPopulator implements Populator<MeetingModel, MeetingData> {

    @Override
    public void populate(MeetingModel s, MeetingData t) {
        Validate.notNull(s);
        Validate.notNull(t);

        if (s.getMeetingHour() != null) {
            t.setMeetingNumber(s.getMeetingHour().getMeetingNumber());
            t.setStartTime(s.getMeetingHour().getStartTime());
            t.setEndTime(s.getMeetingHour().getEndDate());
        }

        t.setCanceled(false);

        if (s.getSubject() != null) {
            t.setSubjectName(s.getSubject().getName());
        }

        if (s.getClassModel() != null) {
            t.setClassName(s.getClassModel().getName());
        }

        if (s.getTeacher() != null) {
            t.setTeacherName(s.getTeacher().getFirstName() + " " + s.getTeacher().getSurname());
        }

        t.setWeekNumber(s.getWeekNumber());
        t.setWeekName(getWeekName(s.getWeekNumber()));
        t.setActive(isActive(t.getStartTime(), t.getEndTime(), t.getWeekNumber()));
    }

    private String getWeekName(int numerOfWeek) {
        WeekNameEnum[] weeks = WeekNameEnum.values();

        return weeks[numerOfWeek - 1].toString();
    }

    /**
     * Sprawdza czy dane spotkanie jest aktualnie odbywane lub nie.
     *
     * @param startTime czas rozpoczęcia spotkania.
     * @param endTime czas zakończenia spotkania.
     * @param weekNumber numer tygodnia w którym odbywa się spotkanie.
     * @return true jeżeli spotkanie pokrywa się z aktualnym czasem, lub false jeżeli nie.
     */
    private boolean isActive(Date startTime, Date endTime, int weekNumber) {
        Date now = new Date();

        Calendar nowDate = Calendar.getInstance();
        Calendar fromTime = Calendar.getInstance();
        Calendar toTime = Calendar.getInstance();

        nowDate.setTime(now);
        int actualWeekNumber = nowDate.get(Calendar.DAY_OF_WEEK) - 1;
        int actualHour = nowDate.get(Calendar.HOUR_OF_DAY);
        int actualMinute = nowDate.get(Calendar.MINUTE);
        if(actualWeekNumber == 0) {
            actualWeekNumber = 7;
        }

        fromTime.setTime(startTime);
        int fromHour = fromTime.get(Calendar.HOUR_OF_DAY);
        int fromMinute = fromTime.get(Calendar.MINUTE);

        toTime.setTime(endTime);
        int toHour = fromTime.get(Calendar.HOUR_OF_DAY);
        int toMinute = fromTime.get(Calendar.MINUTE);

        if(actualWeekNumber == weekNumber) {
            if(actualHour >= fromHour && actualHour <= toHour) {
                return actualMinute >= fromMinute && actualMinute <= toMinute;
            }
        }

        return false;
    }
}
