package pl.dziennik.facades.populators.grades;

import org.springframework.stereotype.Component;
import pl.dziennik.facades.data.grades.GradeDetailsData;
import pl.dziennik.facades.populators.Populator;
import pl.dziennik.model.user.GradeSetModel;

@Component
public class GradeDetailsPopulator implements Populator<GradeSetModel, GradeDetailsData> {

    @Override
    public void populate(GradeSetModel s, GradeDetailsData t) {
        t.setDate(s.getDate());

        if(s.getTeacher() != null) {
            t.setTeacherName(s.getTeacher().getFirstName() + " " + s.getTeacher().getSurname());
        }

        t.setTitle(s.getTitle());
        t.setWeight(s.getWeight());
    }
}