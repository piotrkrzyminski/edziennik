package pl.dziennik.facades.data;

import java.util.Objects;

public class FinalGradeData {

    private Long id;

    private double mark;

    private Long studentId;

    private Long subjectId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public double getMark() {
        return mark;
    }

    public void setMark(double mark) {
        this.mark = mark;
    }

    public Long getStudentId() {
        return studentId;
    }

    public void setStudentId(Long studentId) {
        this.studentId = studentId;
    }

    public Long getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(Long subjectId) {
        this.subjectId = subjectId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        FinalGradeData that = (FinalGradeData) o;
        return Double.compare(that.mark, mark) == 0 &&
                Objects.equals(id, that.id) &&
                Objects.equals(studentId, that.studentId) &&
                Objects.equals(subjectId, that.subjectId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, mark, studentId, subjectId);
    }
}
