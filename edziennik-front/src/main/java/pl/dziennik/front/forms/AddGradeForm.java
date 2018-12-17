package pl.dziennik.front.forms;

import pl.dziennik.facades.data.grades.GradeData;
import pl.dziennik.facades.data.user.StudentData;

import java.util.List;
import java.util.Map;

public class AddGradeForm {

    private long meetingId;

    private String date;

    private String description;

    private double weight;

    private List<StudentData> students;

    public long getMeetingId() {
        return meetingId;
    }

    public void setMeetingId(long meetingId) {
        this.meetingId = meetingId;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public List<StudentData> getStudents() {
        return students;
    }

    public void setStudents(List<StudentData> students) {
        this.students = students;
    }
}
