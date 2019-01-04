package pl.dziennik.facades.converters.impl;

import org.springframework.stereotype.Component;
import pl.dziennik.facades.converters.CustomConverter;
import pl.dziennik.facades.data.ClassData;
import pl.dziennik.model.ClassModel;

@Component
public class ClassConverter implements CustomConverter<ClassModel, ClassData> {

    @Override
    public ClassData convert(ClassModel classModel) {
        ClassData classData = new ClassData();
        classData.setId(classModel.getId());
        classData.setName(classModel.getName());

        return classData;
    }
}
