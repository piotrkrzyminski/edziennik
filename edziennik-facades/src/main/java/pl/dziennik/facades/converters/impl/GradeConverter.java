package pl.dziennik.facades.converters.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import pl.dziennik.facades.converters.CustomConverter;
import pl.dziennik.facades.data.grades.GradeData;
import pl.dziennik.facades.populators.Populator;
import pl.dziennik.model.user.GradeModel;

@Component
public class GradeConverter implements CustomConverter<GradeModel, GradeData> {

    private Populator<GradeModel, GradeData> gradeDataPopulator;

    @Override
    public GradeData convert(GradeModel gradeModel) {
        GradeData gradeData = new GradeData();
        gradeDataPopulator.populate(gradeModel, gradeData);

        return gradeData;
    }

    @Autowired
    public void setGradeDataPopulator(Populator<GradeModel, GradeData> gradeDataPopulator) {
        this.gradeDataPopulator = gradeDataPopulator;
    }
}
