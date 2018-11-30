package pl.dziennik.core.repository.user;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.dziennik.model.meetings.MeetingModel;
import pl.dziennik.model.meetings.ScheduleModel;

import java.util.List;

/**
 * Repozytorium dla terminarzu
 */
public interface ScheduleRepository extends JpaRepository<ScheduleModel, Long> {

    /**
     * Wyszukuje terminarz spotkań dla klasy o podanym identyfikatorze.
     *
     * @param className identyfikator klasy.
     * @return terminarz spotkań dla podanej klasy.
     */
    @Query("SELECT s FROM ScheduleModel s INNER JOIN s.classModel c WHERE c.name = ?1")
    ScheduleModel findScheduleModelByClassName(final String className);

    /**
     * Wyszukuje listę spotkań dla podanej klasy w określony dzień tygodnia.
     *
     * @param className identyfikator klasy.
     * @param weekDay dzień tygodnia.
     * @return lista spotkań dla podanej klasy i danego dnia.
     */
    @Query("SELECT sch.meetings FROM ScheduleModel s INNER JOIN s.classModel c INNER JOIN ScheduleDayModel sch WHERE " +
            "c.name = ?1 AND sch.numberOfWeek = ?2")
    List<MeetingModel> findMeetingsByClassNameAndWeekDay(final String className, final int weekDay);
}
