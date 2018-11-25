package pl.dziennik.core.services.user.impl;

import org.apache.commons.lang3.Validate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.dziennik.core.repository.user.ClassRepository;
import pl.dziennik.core.services.user.ClassService;
import pl.dziennik.model.user.ClassModel;
import pl.dziennik.model.user.MeetingModel;
import pl.dziennik.model.user.StudentModel;
import pl.dziennik.model.user.TeacherModel;

import java.util.Date;
import java.util.List;

/**
 * Default implementation for {@link ClassService}
 */
@Service
public class DefaultClassService implements ClassService {

    private static final Logger LOG = LoggerFactory.getLogger(DefaultClassService.class);

    @Autowired
    private ClassRepository classRepository;

    @Override
    public void saveClass(ClassModel classModel) {
        Validate.notNull(classModel);

        classRepository.save(classModel);
    }

    @Override
    public ClassModel getClassByName(String name) {
        Validate.notBlank(name);

        ClassModel classModel = classRepository.findByName(name);
        if(classModel == null) {
            LOG.debug("Class with name {} not found", name);
        }

        LOG.debug("Found class with name {}", name);

        return classModel;
    }

    @Override
    public List<StudentModel> getStudentsFromClassByName(String name) {
        Validate.notBlank(name);

        return classRepository.findAllStudents(name);
    }

    @Override
    public TeacherModel getTeacherFromClassByName(String name) throws IllegalArgumentException {
        Validate.notBlank(name);

        TeacherModel teacher = classRepository.findTeacherFromClassByName(name);
        if(teacher == null) {
            LOG.debug("Class with name {} not exists or teacher is not assigned.", name);
            throw new IllegalArgumentException("Class with name " + name + " not exists or teacher is not assigned");
        }

        return teacher;
    }

    @Override
    public List<MeetingModel> getMeetingsFromClassByName(String name) {
        Validate.notBlank(name);

        return classRepository.findAllMeetingsFromClassByName(name);
    }

    @Override
    public List<MeetingModel> getMeetingsFromClassFromDate(String name, Date date) {
        Validate.notBlank(name);
        Validate.notNull(date);

        return classRepository.findMeetingsForClassByNameAndDate(name, date);
    }

    @Override
    public List<MeetingModel> getMeetingsFromClassBetweenDates(String name, Date startDate, Date endDate) {
        Validate.notBlank(name);
        Validate.notNull(startDate);
        Validate.notNull(endDate);

        return classRepository.findMeetingsForClassBetweenDates(name, startDate, endDate);
    }
}
