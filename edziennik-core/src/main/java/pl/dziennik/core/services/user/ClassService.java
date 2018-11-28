package pl.dziennik.core.services.user;

import pl.dziennik.model.user.ClassModel;
import pl.dziennik.model.user.MeetingModel;
import pl.dziennik.model.user.StudentModel;
import pl.dziennik.model.user.TeacherModel;

import java.util.Date;
import java.util.List;

public interface ClassService {

    /**
     * Saves class to database.
     *
     * @param classModel class object to save.
     */
    void saveClass(ClassModel classModel);

    /**
     * Get class by it's name.
     *
     * @param name name of class.
     * @return class with name from parameter.
     */
    ClassModel getClassByName(final String name);

    /**
     * Get list of all students assigned to class with the selected name.
     *
     * @param name name of class.
     * @return list of students from the slecific class or empty list if class with the following name is not exists.
     */
    List<StudentModel> getStudentsFromClassByName(final String name);

    /**
     * Get teacher assigned to class specified by name.
     *
     * @param name name of class.
     * @return teacher assigned to class
     * @throws IllegalArgumentException class not exists or teacher is not assigned.
     */
    TeacherModel getTeacherFromClassByName(final String name) throws IllegalArgumentException;

    /**
     * Get all class meetings by class name.
     *
     * @param name name of class.
     * @return list of all meetings or empty list if no meetings found.
     */
    List<MeetingModel> getMeetingsFromClassByName(final String name);

    /**
     * Get all meetings by class name started from specified date.
     *
     * @param name name of class.
     * @param date start date.
     * @return list of meeting for class that start after specified date.
     */
    List<MeetingModel> getMeetingsFromClassFromDate(final String name, final Date date);

    /**
     * Get all meetings by class name between start and end date specified in parameter.
     *
     * @param name name of class.
     * @param startDate start date.
     * @param endDate end date.
     * @return list of meetings between two dates.
     */
    List<MeetingModel> getMeetingsFromClassBetweenDates(final String name, final Date startDate, final Date endDate);
}
