package pl.dziennik.facades.data.meetings;

import java.util.Date;
import java.util.List;

/**
 * Reprezentacja planu tygodniowego.
 */
public class ScheduleData {

    /**
     * Pierwszy dzień planu tygodniowego.
     */
    private Date startDate;

    /**
     * Ostatni dzień plany tygodniowego.
     */
    private Date endDate;

    /**
     * Lista dni składająca się na plan tygodniowy.
     */
    private List<ScheduleDayData> scheduleDays;

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public List<ScheduleDayData> getScheduleDays() {
        return scheduleDays;
    }

    public void setScheduleDays(List<ScheduleDayData> scheduleDays) {
        this.scheduleDays = scheduleDays;
    }
}
