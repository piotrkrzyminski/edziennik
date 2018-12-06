package pl.dziennik.front.forms;

import pl.dziennik.facades.data.user.StudentData;

import javax.validation.constraints.NotNull;
import java.util.Date;
import java.util.Map;

public class PresentForm {

    @NotNull
    private Date date;

    @NotNull
    private Long meetingId;

    @NotNull
    private Map<StudentData, Boolean> presents;

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Long getMeetingId() {
        return meetingId;
    }

    public void setMeetingId(Long meetingId) {
        this.meetingId = meetingId;
    }

    public Map<StudentData, Boolean> getPresents() {
        return presents;
    }

    public void setPresents(Map<StudentData, Boolean> presents) {
        this.presents = presents;
    }
}
