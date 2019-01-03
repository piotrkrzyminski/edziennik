package pl.dziennik.facades.populators.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import pl.dziennik.facades.data.grades.GradeData;
import pl.dziennik.facades.data.grades.GradeDetailsData;
import pl.dziennik.facades.populators.Populator;
import pl.dziennik.model.user.GradeModel;
import pl.dziennik.model.user.GradeSetModel;

@Component
public class GradePopulator implements Populator<GradeModel, GradeData> {

    @Autowired
    private Populator<GradeSetModel, GradeDetailsData> gradeDetailsDataPopulator;

    @Override
    public void populate(GradeModel s, GradeData t) {

        if (s.getGradeSet() != null) {
            if (s.getGradeSet().getSubject() != null) {
                t.setSubjectName(s.getGradeSet().getSubject().getName());
            }
        }

        GradeDetailsData gradeDetailsData = new GradeDetailsData();
        gradeDetailsDataPopulator.populate(s.getGradeSet(), gradeDetailsData);
        gradeDetailsData.setMark(s.getGrade());
        t.setGradeDetails(gradeDetailsData);
        t.setId(s.getId());
    }
}
