package pl.dziennik.facades.populators.impl;

import org.springframework.stereotype.Component;
import pl.dziennik.facades.data.FinalGradeData;
import pl.dziennik.facades.populators.Populator;
import pl.dziennik.model.FinalGradeModel;

@Component
public class FinalGradePopulator implements Populator<FinalGradeModel, FinalGradeData> {

    @Override
    public void populate(FinalGradeModel s, FinalGradeData t) {
        t.setId(s.getId());
        t.setMark(s.getMark());
        t.setStudentId(s.getStudent().getId());
        t.setSubjectId(s.getSubject().getId());
    }
}
