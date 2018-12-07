package pl.dziennik.front.forms;

import pl.dziennik.facades.data.user.StudentData;

import java.util.List;
import java.util.Map;

public class PresentForm {

    private String date;

    private Long meetingId;

    private List<StudentData> students;

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Long getMeetingId() {
        return meetingId;
    }

    public void setMeetingId(Long meetingId) {
        this.meetingId = meetingId;
    }

    public List<StudentData> getStudents() {
        return students;
    }

    public void setStudents(List<StudentData> students) {
        this.students = students;
    }
}
