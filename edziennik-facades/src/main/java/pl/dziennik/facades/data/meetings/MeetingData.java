package pl.dziennik.facades.data.meetings;

import java.util.Date;

/**
 * Reprezentacja spotkania po stronie frontowej.
 */
public class MeetingData {

    /**
     * numer lekcji. Na przykład 1 oznacza pierwszą lekcję danego dnia.
     */
    private int meetingNumber;

    /**
     * Nazwa przedmiotu.
     */
    private String subjectName;

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

    public int getMeetingNumber() {
        return meetingNumber;
    }

    public void setMeetingNumber(int meetingNumber) {
        this.meetingNumber = meetingNumber;
    }

    public String getSubjectName() {
        return subjectName;
    }

    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName;
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
}
