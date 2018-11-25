package pl.dziennik.core.repository.user;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.dziennik.model.user.ClassModel;
import pl.dziennik.model.user.MeetingModel;
import pl.dziennik.model.user.StudentModel;
import pl.dziennik.model.user.TeacherModel;

import java.util.Date;
import java.util.List;

/**
 * Repository for {@link ClassModel}.
 */
public interface ClassRepository extends JpaRepository<ClassModel, Long> {

    /**
     * Find class with name.
     *
     * @param name name of class.
     * @return class with the specified name or null if it is not exists.
     */
    ClassModel findByName(final String name);

    /**
     * Get all students from the specified class.
     *
     * @return list of all students from the specified class.
     */
    @Query("SELECT c.students FROM ClassModel c WHERE c.name = ?1")
    List<StudentModel> findAllStudents(final String className);

    /**
     * Find teacher assigned to class with the specified name.
     *
     * @param className name of class.
     * @return teacher associated to class with name from the parameter or null if it is not assigned.
     */
    @Query("SELECT c.teacher FROM ClassModel  c WHERE c.name = ?1")
    TeacherModel findTeacherFromClassByName(final String className);

    /**
     * Find all meetings associated to class with the specified name.
     *
     * @param className name of class.
     * @return list of all meetings associated to class with name specified in parameter or empty list if non of
     * them is exists.
     */
    @Query("SELECT c.meetings FROM ClassModel c WHERE c.name = ?1")
    List<MeetingModel> findAllMeetingsFromClassByName(final String className);

    /**
     * Find all meetings associated to class with the specific name and in the specific date.
     *
     * @param className name of class.
     * @param date date of meeting.
     * @return list of all meetings sorted by date and associated to class with name specified in parameter and in
     * the specific day.
     */
    @Query("SELECT m FROM ClassModel c INNER JOIN c.meetings m WHERE c.name = ?1 AND m.date = ?2 ORDER BY m.date ASC")
    List<MeetingModel> findMeetingsForClassByNameAndDate(final String className, final Date date);

    /**
     * Find all meetings for class with the specified name between two dates.
     *
     * @param className name of class.
     * @param startDate start date.
     * @param endDate end date.
     * @return list of meetings sorted by date for class with name from the parameter and between two dates.
     */
    @Query("SELECT m FROM ClassModel c INNER JOIN c.meetings m WHERE c.name = ?1 AND m.date BETWEEN ?2 AND ?3 ORDER BY m.date ASC")
    List<MeetingModel> findMeetingsForClassBetweenDates(final String className, final Date startDate, final Date endDate);
}
