package pl.dziennik.facades.converters.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import pl.dziennik.facades.converters.CustomConverter;
import pl.dziennik.facades.data.FinalGradeData;
import pl.dziennik.facades.populators.Populator;
import pl.dziennik.model.FinalGradeModel;

@Component
public class FinalGradeConverter implements CustomConverter<FinalGradeModel, FinalGradeData> {

    private Populator<FinalGradeModel, FinalGradeData> finalGradeDataPopulator;

    @Override
    public FinalGradeData convert(FinalGradeModel finalGradeModel) {
        FinalGradeData finalGradeData = new FinalGradeData();
        finalGradeDataPopulator.populate(finalGradeModel, finalGradeData);

        return finalGradeData;
    }

    @Autowired
    public void setFinalGradeDataPopulator(Populator<FinalGradeModel, FinalGradeData> finalGradeDataPopulator) {
        this.finalGradeDataPopulator = finalGradeDataPopulator;
    }
}
