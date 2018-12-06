package pl.dziennik.core.services.user.impl;

import org.apache.commons.lang3.Validate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.dziennik.core.exceptions.ItemNotFoundException;
import pl.dziennik.core.repository.user.StudentRepository;
import pl.dziennik.core.services.user.StudentService;
import pl.dziennik.model.user.ClassModel;
import pl.dziennik.model.user.GradeModel;
import pl.dziennik.model.user.ParentModel;
import pl.dziennik.model.user.StudentModel;

import java.util.List;
import java.util.Set;

/**
 * Default implementation of {@link StudentService}.
 */
@Service
public class DefaultStudentService implements StudentService {

    private static final Logger LOG = LoggerFactory.getLogger(DefaultStudentService.class);

    @Autowired
    private StudentRepository studentRepository;

    @Override
    public StudentModel getStudentById(Long id) throws ItemNotFoundException {
        final StudentModel student = studentRepository.findStudentById(id);
        if(student == null) {
            throw new ItemNotFoundException("Uczeń o identyfikatorze " + id + " nie istnieje");
        }
        return student;
    }

    @Override
    public StudentModel getStudentByEmail(String email) {
        Validate.notBlank(email);

        final StudentModel student = studentRepository.findStudentByEmail(email);
        if (student == null) {
            LOG.debug("No student with email {} found", email);
        }

        return student;
    }

    @Override
    public ClassModel getClassByStudentEmail(String email) {
        Validate.notBlank(email);

        final ClassModel classModel = studentRepository.findClassByEmail(email);
        if (classModel == null) {
            LOG.debug("Cannot find class which student with email {} is belonging", email);
        }

        return classModel;
    }

    @Override
    public Set<ParentModel> getParentsByStudentEmail(String email) {
        Validate.notBlank(email);
        Set<ParentModel> parents = studentRepository.findParentsByEmail(email);

        if (parents.isEmpty()) {
            LOG.debug("Student with email {} has no assigned parents", email);
        }

        return parents;
    }

    @Override
    public List<GradeModel> getAllGradesByStudentEmail(String email) {
        Validate.notBlank(email);

        List<GradeModel> grades = studentRepository.findAllGradesByEmail(email);

        if (grades.isEmpty()) {
            LOG.debug("User has no assigned grades");
        }

        return grades;
    }
}
