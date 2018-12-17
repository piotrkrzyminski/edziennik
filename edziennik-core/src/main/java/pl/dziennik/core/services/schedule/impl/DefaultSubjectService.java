package pl.dziennik.core.services.schedule.impl;

import org.apache.commons.lang3.Validate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import pl.dziennik.core.repository.schedule.SubjectRepository;
import pl.dziennik.core.repository.user.TeacherRepository;
import pl.dziennik.core.services.schedule.SubjectService;
import pl.dziennik.model.meetings.SubjectModel;
import pl.dziennik.model.user.TeacherModel;

import java.util.List;

/**
 * Default implementation for {@link SubjectService}.
 *
 * @author Piotr Krzyminski
 */
@Service
public class DefaultSubjectService implements SubjectService {

    private static final Logger LOG = LoggerFactory.getLogger(DefaultSubjectService.class);

    @Autowired
    private TeacherRepository teacherRepository;

    @Autowired
    private SubjectRepository subjectRepository;

    @Override
    public List<SubjectModel> getSubjectsForTeacherWithEmail(final String email) {
        Validate.notBlank(email);

        final TeacherModel teacher = teacherRepository.findTeacherByEmail(email);
        if (teacher == null) {
            return null;
        }

        final List<SubjectModel> subjects = subjectRepository.findByTeacher(teacher);
        if (CollectionUtils.isEmpty(subjects)) {
            LOG.debug("No subjects found for teacher with email {}", email);
        } else {
            LOG.debug("Found {} subjects assigned to teacher with email {}", subjects.size(), email);
        }

        return subjects;
    }

    @Override
    public SubjectModel getSubjectForName(String name) {
        final SubjectModel subject = subjectRepository.findSubjectByName(name);
        if(subject == null) {
            LOG.debug("Cannot find subject with name {}", name);
        }

        return subject;
    }
}
