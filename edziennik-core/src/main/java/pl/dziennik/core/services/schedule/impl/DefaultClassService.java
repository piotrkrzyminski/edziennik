package pl.dziennik.core.services.schedule.impl;

import org.apache.commons.lang3.Validate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.dziennik.core.repository.schedule.ClassRepository;
import pl.dziennik.core.services.schedule.ClassService;
import pl.dziennik.model.user.StudentModel;

import java.util.List;

@Service
public class DefaultClassService implements ClassService {

    private static final Logger LOG = LoggerFactory.getLogger(DefaultClassService.class);

    @Autowired
    private ClassRepository classRepository;

    @Override
    public List<StudentModel> getStudentsFromClass(String className) {
        Validate.notBlank(className);

        final List<StudentModel> students = classRepository.findAllStudentsFromClassByName(className);
        if (students.isEmpty()) {
            LOG.debug("No students found for class {}", className);
        }

        return students;
    }
}
