package pl.dziennik.facades.data;

import java.util.Date;
import java.util.List;

public class AddGradeSetData {

    private String title;

    private double weight;

    private String teacherEmail;

    private Date date;

    private String className;

    private long meetingId;

    private String subjectName;

    private List<AddGradeData> grades;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public String getTeacherEmail() {
        return teacherEmail;
    }

    public void setTeacherEmail(String teacherEmail) {
        this.teacherEmail = teacherEmail;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public long getMeetingId() {
        return meetingId;
    }

    public void setMeetingId(long meetingId) {
        this.meetingId = meetingId;
    }

    public String getSubjectName() {
        return subjectName;
    }

    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName;
    }

    public List<AddGradeData> getGrades() {
        return grades;
    }

    public void setGrades(List<AddGradeData> grades) {
        this.grades = grades;
    }
}
