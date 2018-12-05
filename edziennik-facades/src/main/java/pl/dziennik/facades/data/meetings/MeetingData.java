package pl.dziennik.facades.data.meetings;

import java.util.Date;

/**
 * Reprezentacja spotkania po stronie frontowej.
 */
public class MeetingData {

    private Long id;

    /**
     * Data spotkania
     */
    private Date date;

    /**
     * numer lekcji. Na przykład 1 oznacza pierwszą lekcję danego dnia.
     */
    private int meetingNumber;

    /**
     * Numer tygodnia. Na przykład poniedziałek to 1.
     */
    private int weekNumber;

    /**
     * Nazwa tygodnia. Na przykład Poniedziałek, Wtorek itp.
     */
    private String weekName;

    /**
     * Nazwa przedmiotu.
     */
    private String subjectName;

    /**
     * Nazwa klasy która ma to spotkanie.
     */
    private String className;

    /**
     * Nazwa nauczyciela prowadzącego lekcję.
     */
    private String teacherName;

    /**
     * Godzina rozpoczęcia.
     */
    private Date startTime;

    /**
     * Godzina zakończenia.
     */
    private Date endTime;

    /**
     * Czy zajęcia są anulowane (na przykład z powodu przerwy świątecznej).
     */
    private boolean canceled;

    /**
     * Czy są to zajęcia aktualnie odbywane.
     */
    private boolean active;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getMeetingNumber() {
        return meetingNumber;
    }

    public void setMeetingNumber(int meetingNumber) {
        this.meetingNumber = meetingNumber;
    }

    public int getWeekNumber() {
        return weekNumber;
    }

    public void setWeekNumber(int weekNumber) {
        this.weekNumber = weekNumber;
    }

    public String getWeekName() {
        return weekName;
    }

    public void setWeekName(String weekName) {
        this.weekName = weekName;
    }

    public String getSubjectName() {
        return subjectName;
    }

    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public boolean isCanceled() {
        return canceled;
    }

    public void setCanceled(boolean canceled) {
        this.canceled = canceled;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }
}
