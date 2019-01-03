package pl.dziennik.front.forms;

import pl.dziennik.facades.data.user.StudentData;

import java.util.List;

public class StudentGradesForm {

    private List<StudentData> students;

    public List<StudentData> getStudents() {
        return students;
    }

    public void setStudents(List<StudentData> students) {
        this.students = students;
    }
}
