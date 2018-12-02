package pl.dziennik.facades.data.grades;

public class GradeData {

    private String subjectName;

    private GradeDetailsData gradeDetails;

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
}
