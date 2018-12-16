package pl.dziennik.facades.impl;

import org.apache.commons.lang3.Validate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
import pl.dziennik.core.services.schedule.ClassService;
import pl.dziennik.facades.ClassFacade;
import pl.dziennik.facades.data.user.StudentData;
import pl.dziennik.model.user.StudentModel;

import java.util.ArrayList;
import java.util.List;

@Component
public class DefaultClassFacade implements ClassFacade {

    @Autowired
    private ClassService classService;

    @Autowired
    private Converter<StudentModel, StudentData> studentDataConverter;

    @Override
    public List<StudentData> getStudentsFromClass(String className) {
        Validate.notBlank(className);

        List<StudentData> students = new ArrayList<>();
        final List<StudentModel> studentModelList = classService.getStudentsFromClass(className);
        for (StudentModel studentModel : studentModelList) {
            students.add(studentDataConverter.convert(studentModel));
        }

        return students;
    }
}
