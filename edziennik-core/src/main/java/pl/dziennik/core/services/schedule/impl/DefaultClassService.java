package pl.dziennik.core.services.schedule.impl;

import org.apache.commons.lang3.Validate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.dziennik.core.repository.meetings.MeetingRepository;
import pl.dziennik.core.repository.schedule.ClassRepository;
import pl.dziennik.core.services.schedule.ClassService;
import pl.dziennik.model.meetings.MeetingModel;
import pl.dziennik.model.meetings.SubjectModel;
import pl.dziennik.model.user.ClassModel;
import pl.dziennik.model.user.StudentModel;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class DefaultClassService implements ClassService {

    private static final Logger LOG = LoggerFactory.getLogger(DefaultClassService.class);

    private ClassRepository classRepository;
    private MeetingRepository meetingRepository;

    @Override
    public List<StudentModel> getStudentsFromClass(String className) {
        Validate.notBlank(className);

        final List<StudentModel> students = classRepository.findAllStudentsFromClassByName(className);
        if (students.isEmpty()) {
            LOG.debug("No students found for class {}", className);
        }

        return students;
    }

    @Override
    public List<StudentModel> getStudentsFromClass(long classId) {
        final List<StudentModel> students = classRepository.findAllStudentsFromClassById(classId);
        if (students.isEmpty()) {
            LOG.debug("No students found for class with id {}", classId);
        }

        return students;
    }

    @Override
    public ClassModel getClassForName(String name) {
        Validate.notBlank(name);

        final ClassModel classModel = classRepository.findClassByName(name);
        if(classModel == null) {
            LOG.debug("No class found for name {}", name);
        }

        return classModel;
    }

    @Override
    public ClassModel findById(long id) {
        return classRepository.findById(id).get();
    }

    @Override
    public List<ClassModel> findAll() {
        return classRepository.findAll();
    }

    @Override
    public Set<SubjectModel> getAllSubjectsForClassById(long id) {
        List<MeetingModel> meetingModelList = meetingRepository.findAll();
        Set<SubjectModel> subjects = new HashSet<>();
        for(MeetingModel meetingModel : meetingModelList) {
            if(meetingModel.getSubject() != null) {
                subjects.add(meetingModel.getSubject());
            }
        }

        return subjects;
    }

    @Autowired
    public void setClassRepository(ClassRepository classRepository) {
        this.classRepository = classRepository;
    }

    @Autowired
    public void setMeetingRepository(MeetingRepository meetingRepository) {
        this.meetingRepository = meetingRepository;
    }
}
