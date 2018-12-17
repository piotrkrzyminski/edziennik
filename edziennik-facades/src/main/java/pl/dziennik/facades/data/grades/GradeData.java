package pl.dziennik.facades.data.grades;

import java.util.Objects;

public class GradeData {

    private Long id;

    private String subjectName;

    private GradeDetailsData gradeDetails;

    private double avgGrade;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getSubjectName() {
        return subjectName;
    }

    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName;
    }

    public GradeDetailsData getGradeDetails() {
        return gradeDetails;
    }

    public void setGradeDetails(GradeDetailsData gradeDetails) {
        this.gradeDetails = gradeDetails;
    }

    public double getAvgGrade() {
        return avgGrade;
    }

    public void setAvgGrade(double avgGrade) {
        this.avgGrade = avgGrade;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        GradeData gradeData = (GradeData) o;
        return Objects.equals(subjectName, gradeData.subjectName);
    }

    @Override
    public int hashCode() {
        return Objects.hash(subjectName);
    }
}
