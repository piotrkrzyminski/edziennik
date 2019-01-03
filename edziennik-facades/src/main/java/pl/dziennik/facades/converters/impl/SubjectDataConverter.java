package pl.dziennik.facades.converters.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
import pl.dziennik.facades.converters.CustomConverter;
import pl.dziennik.facades.data.grades.SubjectData;
import pl.dziennik.facades.populators.Populator;
import pl.dziennik.model.meetings.SubjectModel;

@Component
public class SubjectDataConverter implements CustomConverter<SubjectModel, SubjectData> {

    private Populator<SubjectModel, SubjectData> subjectDataPopulator;

    @Override
    public SubjectData convert(SubjectModel subjectModel) {
        SubjectData subjectData = new SubjectData();
        subjectDataPopulator.populate(subjectModel, subjectData);

        return subjectData;
    }

    @Autowired
    public void setSubjectDataPopulator(Populator<SubjectModel, SubjectData> subjectDataPopulator) {
        this.subjectDataPopulator = subjectDataPopulator;
    }
}
