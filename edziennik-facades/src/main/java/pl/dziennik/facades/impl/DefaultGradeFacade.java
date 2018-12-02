package pl.dziennik.facades.impl;

import org.apache.commons.lang3.Validate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import pl.dziennik.core.services.user.GradesService;
import pl.dziennik.facades.GradeFacade;
import pl.dziennik.facades.data.grades.GradeData;
import pl.dziennik.facades.data.grades.GradeDetailsData;
import pl.dziennik.facades.populators.Populator;
import pl.dziennik.model.user.GradeModel;

import java.util.ArrayList;
import java.util.List;

@Component
public class DefaultGradeFacade implements GradeFacade {

    @Autowired
    private GradesService gradesService;

    @Autowired
    private Populator<GradeModel, GradeData> gradeDataPopulator;

    @Override
    public List<GradeData> getGradesForStudent(String email) {
        Validate.notBlank(email);
        final List<GradeModel> gradeModelList = gradesService.findGradesForStudent(email);

        final List<GradeData> grades = new ArrayList<>();
        for(GradeModel grade : gradeModelList) {
            GradeData gradeData = new GradeData();
            gradeDataPopulator.populate(grade, gradeData);
            grades.add(gradeData);
        }

        return grades;
    }
}
