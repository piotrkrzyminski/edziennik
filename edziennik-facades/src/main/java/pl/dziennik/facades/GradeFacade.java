package pl.dziennik.facades;

import pl.dziennik.facades.data.grades.AddGradeData;
import pl.dziennik.facades.data.grades.AddGradeSetData;
import pl.dziennik.facades.data.grades.GradeData;

import java.util.List;

public interface GradeFacade {

    /**
     * Get grades for student with specific email address.
     *
     * @param email student's email address.
     * @return list of grades.
     */
    List<GradeData> getGradesForStudent(final String email);

    List<GradeData> getGradesForStudentIdAndSubject(final Long id, final String subjectName);
    
    void saveAllGrades(AddGradeSetData grades);
}
