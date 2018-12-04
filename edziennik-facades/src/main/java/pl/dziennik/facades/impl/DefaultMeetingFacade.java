package pl.dziennik.facades.impl;

import org.apache.commons.lang3.Validate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
import pl.dziennik.core.services.meetings.MeetingHourService;
import pl.dziennik.core.services.meetings.MeetingService;
import pl.dziennik.facades.MeetingFacade;
import pl.dziennik.facades.data.meetings.MeetingData;
import pl.dziennik.facades.data.meetings.MeetingHourData;
import pl.dziennik.facades.enums.WeekNameEnum;
import pl.dziennik.model.meetings.MeetingHoursModel;
import pl.dziennik.model.meetings.MeetingModel;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.*;

/**
 * Default implementation for {@link MeetingFacade}.
 */
@Component
public class DefaultMeetingFacade implements MeetingFacade {

    @Autowired
    private MeetingService meetingService;
    @Autowired
    private MeetingHourService meetingHourService;
    @Autowired
    private Converter<MeetingModel, MeetingData> meetingDataConverter;
    @Autowired
    private Converter<MeetingHoursModel, MeetingHourData> meetingHourDataConverter;

    @Override
    public List<MeetingData> getMeetingsForClass(String className, Date date) {
        Validate.notBlank(className);

        List<MeetingData> meetingDataList = new ArrayList<>();
        List<Date> weekDates = getDatesForDay(date);
        final List<MeetingModel> meetingModelList = meetingService.getMeetingsByClassName(className);
        for (MeetingModel meetingModel : meetingModelList) {
            final MeetingData meetingData = meetingDataConverter.convert(meetingModel);
            meetingData.setDate(weekDates.get(meetingData.getWeekNumber() - 1));
            meetingDataList.add(meetingData);
        }

        return meetingDataList;
    }

    @Override
    public List<MeetingData> getMeetingsForTeacher(String email, Date date) {
        Validate.notBlank(email);

        List<MeetingData> meetingDataList = new ArrayList<>();
        List<Date> weekDates = getDatesForDay(date);
        final List<MeetingModel> meetingModelList = meetingService.getMeetingsByTeacherEmail(email);
        for (MeetingModel meetingModel : meetingModelList) {
            final MeetingData meetingData = meetingDataConverter.convert(meetingModel);
            meetingData.setDate(weekDates.get(meetingData.getWeekNumber() - 1));
            meetingDataList.add(meetingData);
        }

        return meetingDataList;
    }

    @Override
    public List<String> getWeeksName() {
        List<String> weeks = new ArrayList<>();
        for (WeekNameEnum weekName : WeekNameEnum.values()) {
            weeks.add(weekName.toString());
        }

        return weeks;
    }

    @Override
    public List<MeetingHourData> getHours() {
        final List<MeetingHoursModel> meetingHoursModelList = meetingHourService.getAll();

        List<MeetingHourData> hours = new ArrayList<>();
        for (MeetingHoursModel meetingHoursModel : meetingHoursModelList) {
            MeetingHourData meetingHourData = meetingHourDataConverter.convert(meetingHoursModel);
            hours.add(meetingHourData);
        }

        return hours;
    }

    @Override
    public int getActiveWeekNumber() {
        Date now = new Date();
        Calendar nowDate = Calendar.getInstance();
        nowDate.setTime(now);
        int actualWeekNumber = nowDate.get(Calendar.DAY_OF_WEEK) - 1;
        if(actualWeekNumber == 0) {
            actualWeekNumber = 7;
        }

        return actualWeekNumber;
    }

    @Override
    public List<Date> getDatesForDay(Date date) {
        Calendar actual = Calendar.getInstance();
        actual.setTime(date);

        List<Date> weekDates = new ArrayList<>();
        for(int i = Calendar.SUNDAY; i <= Calendar.SATURDAY; i++) {
            actual.set(Calendar.DAY_OF_WEEK, i);
            weekDates.add(actual.getTime());
        }

        List<Date> result = new ArrayList<>();
        Date temp = weekDates.get(0);
        for(int i = 1; i <= 6; i++) {
            result.add(i-1, weekDates.get(i));
        }
        result.add(6, temp);

        return result;
    }
}
