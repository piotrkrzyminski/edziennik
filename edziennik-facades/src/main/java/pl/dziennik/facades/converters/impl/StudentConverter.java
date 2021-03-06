package pl.dziennik.facades.converters.impl;

import org.apache.commons.lang3.Validate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import pl.dziennik.facades.converters.CustomConverter;
import pl.dziennik.facades.data.StudentData;
import pl.dziennik.facades.populators.Populator;
import pl.dziennik.model.StudentModel;

/**
 * Konwerter dla obiektów studenta.
 */
@Component
public class StudentConverter implements CustomConverter<StudentModel, StudentData> {

    @Autowired
    private Populator<StudentModel, StudentData> studentDataPopulator;

    @Override
    public StudentData convert(StudentModel studentModel) {
        Validate.notNull(studentModel);
        StudentData student = new StudentData();
        studentDataPopulator.populate(studentModel, student);

        return student;
    }
}
