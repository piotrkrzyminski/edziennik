package pl.dziennik.front.forms;

import pl.dziennik.facades.data.FinalGradeData;
import pl.dziennik.facades.data.StudentData;

import java.util.List;

public class StudentGradesForm {

    private List<StudentData> students;

    private List<FinalGradeData> finalGrades;

    public List<StudentData> getStudents() {
        return students;
    }

    public void setStudents(List<StudentData> students) {
        this.students = students;
    }

    public List<FinalGradeData> getFinalGrades() {
        return finalGrades;
    }

    public void setFinalGrades(List<FinalGradeData> finalGrades) {
        this.finalGrades = finalGrades;
    }
}
