package pl.dziennik.facades.populators.impl;

import org.springframework.stereotype.Component;
import pl.dziennik.facades.data.GradeDetailsData;
import pl.dziennik.facades.populators.Populator;
import pl.dziennik.model.GradeSetModel;

@Component
public class GradeDetailsPopulator implements Populator<GradeSetModel, GradeDetailsData> {

    @Override
    public void populate(GradeSetModel s, GradeDetailsData t) {
        t.setDate(s.getDate());
        t.setId(s.getId());

        if (s.getTeacher() != null) {
            t.setTeacherName(s.getTeacher().getFirstName() + " " + s.getTeacher().getSurname());
        }

        t.setTitle(s.getTitle());
        t.setWeight(s.getWeight());
    }
}
