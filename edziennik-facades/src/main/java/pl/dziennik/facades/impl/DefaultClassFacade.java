package pl.dziennik.facades.impl;

import org.apache.commons.lang3.Validate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import pl.dziennik.core.services.ClassService;
import pl.dziennik.facades.ClassFacade;
import pl.dziennik.facades.converters.CustomConverter;
import pl.dziennik.facades.data.SubjectData;
import pl.dziennik.facades.data.ClassData;
import pl.dziennik.facades.data.StudentData;
import pl.dziennik.model.SubjectModel;
import pl.dziennik.model.ClassModel;
import pl.dziennik.model.StudentModel;

import java.util.ArrayList;
import java.util.List;

@Component
public class DefaultClassFacade implements ClassFacade {

    private ClassService classService;
    private CustomConverter<StudentModel, StudentData> studentDataConverter;
    private CustomConverter<ClassModel, ClassData> classDataCustomConverter;
    private CustomConverter<SubjectModel, SubjectData> subjectDataCustomConverter;

    @Override
    public List<StudentData> getStudentsFromClass(String className) {
        Validate.notBlank(className);
        final List<StudentModel> studentModelList = classService.getStudentsFromClass(className);

        return studentDataConverter.convertAll(studentModelList);
    }

    @Override
    public List<StudentData> getStudentsFromClas(long classId) {
        final List<StudentModel> studentModelList = classService.getStudentsFromClass(classId);

        return studentDataConverter.convertAll(studentModelList);
    }

    @Override
    public List<ClassData> findAll() {
        List<ClassModel> classModelList = classService.findAll();

        return classDataCustomConverter.convertAll(classModelList);
    }

    @Override
    public ClassData findById(long id) {
        ClassModel classModel = classService.findById(id);

        return classDataCustomConverter.convert(classModel);
    }

    @Override
    public List<SubjectData> findSubjectsForClass(long id) {
        List<SubjectModel> subjectModelList = new ArrayList<>(classService.getAllSubjectsForClassById(id));

        return subjectDataCustomConverter.convertAll(subjectModelList);
    }

    @Autowired
    public void setClassService(ClassService classService) {
        this.classService = classService;
    }

    @Autowired
    public void setStudentDataConverter(CustomConverter<StudentModel, StudentData> studentDataConverter) {
        this.studentDataConverter = studentDataConverter;
    }

    @Autowired
    public void setClassDataCustomConverter(CustomConverter<ClassModel, ClassData> classDataCustomConverter) {
        this.classDataCustomConverter = classDataCustomConverter;
    }

    @Autowired
    public void setSubjectDataCustomConverter(CustomConverter<SubjectModel, SubjectData> subjectDataCustomConverter) {
        this.subjectDataCustomConverter = subjectDataCustomConverter;
    }
}
