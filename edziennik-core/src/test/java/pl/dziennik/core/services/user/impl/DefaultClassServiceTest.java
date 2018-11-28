package pl.dziennik.core.services.user.impl;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.TestConfiguration;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.Bean;
import org.springframework.test.context.junit4.SpringRunner;
import pl.dziennik.core.repository.user.ClassRepository;
import pl.dziennik.core.services.user.ClassService;
import pl.dziennik.model.user.ClassModel;
import pl.dziennik.model.user.MeetingModel;
import pl.dziennik.model.user.StudentModel;
import pl.dziennik.model.user.TeacherModel;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import static org.junit.Assert.*;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

/**
 * Unit test for {@link DefaultClassService}.
 */
@RunWith(SpringRunner.class)
public class DefaultClassServiceTest {

    private static final String CLASS_NAME = "Ia";

    @TestConfiguration
    static class ClassRepositoryTestContextConfiguration {

        @Bean
        public ClassService classService() {
            return new DefaultClassService();
        }
    }

    @Autowired
    private ClassService classService;

    @MockBean
    private ClassRepository classRepository;

    /**
     * Prepare test data.
     */
    @Before
    public void setUp() throws ParseException {
        createTestData();
    }

    /**
     * Test find class by name when it is exists.
     */
    @Test
    public void testGetClassByName() {
        ClassModel result = classService.getClassByName(CLASS_NAME);

        assertNotNull(result);
        assertEquals(CLASS_NAME, result.getName());
    }

    /**
     * Test find class by name when it is not exists.
     */
    @Test
    public void testGetClassByNameNotFound() {
        ClassModel result = classService.getClassByName("DUMMY CLASS");

        assertNull(result);
    }

    /**
     * Test get all students assigned to class specified by name.
     */
    @Test
    public void testGetStudentsFromClassByName() {
        List<StudentModel> students = classService.getStudentsFromClassByName(CLASS_NAME);

        assertNotNull(students);
        assertEquals(2, students.size());
    }

    /**
     * Test get teacher assigned to class specified by name.
     */
    @Test
    public void testGetTeacherFromClassByName() {
        TeacherModel teacher = classService.getTeacherFromClassByName(CLASS_NAME);

        assertNotNull(teacher);
    }

    @Test
    public void testGetMeetingsFromClassByName() {
        List<MeetingModel> meetings = classService.getMeetingsFromClassByName(CLASS_NAME);

        assertNotNull(meetings);
        assertEquals(2, meetings.size());
    }

    /**
     * Get meetings for class and staring from specified date.
     */
    @Test
    public void testGetMeetingsFromClassFromDate() throws ParseException {
        List<MeetingModel> meetings = classService.getMeetingsFromClassFromDate(CLASS_NAME,
                new SimpleDateFormat("dd/mm/yyyy").parse("19/12/2018"));

        assertNotNull(meetings);
        assertEquals(1, meetings.size());
    }

    @Test
    public void testGetMeetingsFromClassBetweenDates() throws ParseException {
        List<MeetingModel> meetings = classService.getMeetingsFromClassBetweenDates(CLASS_NAME,
                new SimpleDateFormat("dd/mm/yyyy").parse("16/12/2018"),
                new SimpleDateFormat("dd/mm/yyyy").parse("24/12/2018"));

        assertNotNull(meetings);
        assertEquals(2, meetings.size());
    }

    /**
     * Mock test data.
     */
    private void createTestData() throws ParseException {
        ClassModel classModel = mock(ClassModel.class);
        StudentModel student_1 = mock(StudentModel.class);
        StudentModel student_2 = mock(StudentModel.class);
        TeacherModel teacher = mock(TeacherModel.class);
        MeetingModel meeting_1 = mock(MeetingModel.class);
        MeetingModel meeting_2 = mock(MeetingModel.class);

        when(classModel.getName()).thenReturn(CLASS_NAME);
        when(classRepository.findByName(CLASS_NAME)).thenReturn(classModel);
        when(classRepository.findAllStudents(CLASS_NAME)).thenReturn(Arrays.asList(student_1, student_2));
        when(classRepository.findTeacherFromClassByName(CLASS_NAME)).thenReturn(teacher);
        when(classRepository.findAllMeetingsFromClassByName(CLASS_NAME)).thenReturn(Arrays.asList(meeting_1, meeting_2));
        when(classRepository.findMeetingsForClassByNameAndDate(CLASS_NAME, new SimpleDateFormat("dd/mm/yyyy")
                .parse("19/12/2018"))).thenReturn(Collections.singletonList(meeting_2));
        when(classRepository.findMeetingsForClassBetweenDates(CLASS_NAME, new SimpleDateFormat("dd/mm/yyyy")
                .parse("16/12/2018"), new SimpleDateFormat("dd/mm/yyyy")
                .parse("24/12/2018"))).thenReturn(Arrays.asList(meeting_1, meeting_2));

        when(meeting_1.getDate()).thenReturn(new SimpleDateFormat("dd/mm/yyyy").parse("18/12/2018"));
        when(meeting_2.getDate()).thenReturn(new SimpleDateFormat("dd/mm/yyyy").parse("24/12/2018"));
    }
}