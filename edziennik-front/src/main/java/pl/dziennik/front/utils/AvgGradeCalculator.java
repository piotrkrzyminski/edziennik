package pl.dziennik.front.utils;

import pl.dziennik.facades.data.grades.GradeDetailsData;

import java.util.List;

public class AvgGradeCalculator {

    public static double getAverageGrade(List<GradeDetailsData> grades) {
        double sum = 0;
        double count = 0;

        for (GradeDetailsData grade : grades) {
            if(grade.getMark() != 0) {
                sum += (grade.getMark() * grade.getWeight());
                count += grade.getWeight();
            }
        }

        return sum / count;
    }
}
