package pl.dziennik.facades.populators.impl;

import org.apache.commons.lang3.Validate;
import org.springframework.stereotype.Component;
import pl.dziennik.facades.data.StudentData;
import pl.dziennik.facades.populators.Populator;
import pl.dziennik.model.StudentModel;

/**
 * Populator dla obiektów studenta.
 */
@Component
public class StudentPopulator implements Populator<StudentModel, StudentData> {

    @Override
    public void populate(StudentModel s, StudentData t) {
        Validate.notNull(s);
        Validate.notNull(t);
        t.setFirstName(s.getFirstName());
        t.setSecondName(s.getSecondName());
        t.setSurname(s.getSurname());
        t.setPesel(s.getPesel());
        t.setEmail(s.getEmail());
        t.setBirthDate(s.getBirthDate());
        t.setId(s.getId());
        t.setPresent(false);

        if (s.getClassModel() != null) {
            t.setClassName(s.getClassModel().getName());
        }
    }
}
