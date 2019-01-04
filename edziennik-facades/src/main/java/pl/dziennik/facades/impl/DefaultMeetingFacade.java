package pl.dziennik.facades.impl;

import org.apache.commons.lang3.Validate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
import pl.dziennik.core.services.MeetingHourService;
import pl.dziennik.core.services.MeetingService;
import pl.dziennik.facades.MeetingFacade;
import pl.dziennik.facades.data.MeetingData;
import pl.dziennik.facades.data.MeetingHourData;
import pl.dziennik.facades.enums.WeekNameEnum;
import pl.dziennik.model.MeetingHoursModel;
import pl.dziennik.model.MeetingModel;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

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
    public MeetingData getMeetingById(Long id) {
        MeetingModel meetingModel = meetingService.getMeetingById(id);

        MeetingData meetingData = null;
        if(meetingModel != null) {
            meetingData = meetingDataConverter.convert(meetingModel);
        }

        return meetingData;
    }

    @Override
    public MeetingData[][] getMeetingsForClass(String className, Date date) {
        Validate.notBlank(className);

        final List<MeetingModel> meetingModelList = meetingService.getMeetingsByClassName(className);
        final List<MeetingData> meetingDataList = convertMeetings(meetingModelList, date);

        return getMeetingAsMatrix(meetingDataList);
    }

    @Override
    public MeetingData[][] getMeetingsForTeacher(String email, Date date) {
        Validate.notBlank(email);

        final List<MeetingModel> meetingModelList = meetingService.getMeetingsByTeacherEmail(email);
        final List<MeetingData> meetingDataList = convertMeetings(meetingModelList, date);

        return getMeetingAsMatrix(meetingDataList);
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
        if (actualWeekNumber == 0) {
            actualWeekNumber = 7;
        }

        return actualWeekNumber;
    }

    @Override
    public List<Date> getDatesForDay(Date date) {
        Calendar actual = Calendar.getInstance();
        actual.setTime(date);

        List<Date> weekDates = new ArrayList<>();
        for (int i = Calendar.SUNDAY; i <= Calendar.SATURDAY; i++) {
            actual.set(Calendar.DAY_OF_WEEK, i);
            weekDates.add(actual.getTime());
        }

        List<Date> result = new ArrayList<>();
        Date temp = weekDates.get(0);
        for (int i = 1; i <= 6; i++) {
            result.add(i - 1, weekDates.get(i));
        }
        result.add(6, temp);

        return result;
    }

    /**
     * Konwertuje listę spotkań na macierz łatwiejszą do zaprezentowania w tabelce w widoku.
     * Brak spotkania o danej porze definiuje wartość null.
     *
     * @param meetings lista spotkań.
     * @return macierz spotkań.
     */
    private MeetingData[][] getMeetingAsMatrix(List<MeetingData> meetings) {
        MeetingData[][] meetingDataMatrix = new MeetingData[10][7];

        for (int i = 0; i < 10; i++) {
            for (int j = 0; j < 7; j++) {
                MeetingData result = new MeetingData();
                for (MeetingData meetingData : meetings) {
                    if (meetingData.getWeekNumber() - 1 == j && meetingData.getMeetingNumber() - 1 == i) {
                        result = meetingData;
                    }
                }

                meetingDataMatrix[i][j] = result;
            }
        }

        return meetingDataMatrix;
    }

    /**
     * Konwertuje listę modeli i dodaje dni tygodnia.
     *
     * @param meetingModelList lista spotkań.
     * @param date             data według której określone będą dni tygodnia.
     * @return skonfigurowane obiekty spotkań.
     */
    private List<MeetingData> convertMeetings(final List<MeetingModel> meetingModelList, final Date date) {
        List<MeetingData> meetingDataList = new ArrayList<>();
        List<Date> weekDates = getDatesForDay(date);
        for (MeetingModel meetingModel : meetingModelList) {
            final MeetingData meetingData = meetingDataConverter.convert(meetingModel);
            meetingData.setDate(weekDates.get(meetingData.getWeekNumber() - 1));
            meetingDataList.add(meetingData);
        }

        return meetingDataList;
    }
}
