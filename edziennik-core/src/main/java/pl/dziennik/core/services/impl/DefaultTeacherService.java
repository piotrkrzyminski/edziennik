package pl.dziennik.core.services.impl;

import org.apache.commons.lang3.Validate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.dziennik.core.repository.TeacherRepository;
import pl.dziennik.core.services.TeacherService;
import pl.dziennik.model.TeacherModel;

@Service
public class DefaultTeacherService implements TeacherService {

    private static final Logger LOG = LoggerFactory.getLogger(DefaultTeacherService.class);

    @Autowired
    private TeacherRepository teacherRepository;

    @Override
    public TeacherModel getTeacherForEmail(String email) {
        Validate.notBlank(email);

        final TeacherModel teacher = teacherRepository.findTeacherByEmail(email);
        if (teacher == null) {
            LOG.debug("No teacher found by email {}", email);
        }

        return teacher;
    }
}
