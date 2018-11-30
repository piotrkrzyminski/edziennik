package pl.dziennik.facades.data;

import java.util.List;

/**
 * Reprezentacja jednego dnia terminarza
 */
public class ScheduleDayData {

    /**
     * Numer tygodnia. Na przykład poniedziałek to 1.
     */
    private int weekNumber;

    /**
     * Nazwa tygodnia. Na przykład Poniedziałek, Wtorek itp.
     */
    private String weekName;

    /**
     * Lista spotkań danego dnia
     */
    private List<MeetingData> meetings;

    /**
     * Czy jest to dzień wolny od zajęć? (na przykład z powodu świąt itp.)
     */
    private boolean canceled;

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

    public List<MeetingData> getMeetings() {
        return meetings;
    }

    public void setMeetings(List<MeetingData> meetings) {
        this.meetings = meetings;
    }

    public boolean isCanceled() {
        return canceled;
    }

    public void setCanceled(boolean canceled) {
        this.canceled = canceled;
    }
}
