package pl.dziennik.core.services.user;

import com.sun.javaws.exceptions.InvalidArgumentException;
import pl.dziennik.model.meetings.MeetingModel;
import pl.dziennik.model.meetings.ScheduleModel;

import java.util.Date;
import java.util.List;

public interface ScheduleService {

    /**
     * Zwraca terminarz dla podanej klasy.
     *
     * @param className nazwa klasy.
     * @return terminarz dla podanej klasy.
     */
    ScheduleModel getScheduleForClass(final String className) throws InvalidArgumentException;

    /**
     * Wyszukuje listę spotkań dla wybranej klasy i dnia. Z daty pobierany jest dzień tygodnia i na jego podstawie
     * zwracane są spotkania tylko z tego dnia.
     *
     * @param className identyfikator klasy.
     * @param date data spotkania.
     * @return lista spotkań odbywająca się konkretnego dnia dla wybranej klasy.
     */
    List<MeetingModel> getMeetingsForClassAndWeekDay(final String className, Date date) throws InvalidArgumentException;
}
