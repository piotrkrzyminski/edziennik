package pl.dziennik.core.repository.user;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;
import pl.dziennik.model.user.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import static org.junit.Assert.*;

/**
 * Tests for Class repository.
 */
@RunWith(SpringRunner.class)
@DataJpaTest
@Transactional
public class ClassRepositoryIntegrationTest {

    private static final String CLASS_NAME = "Ia";
    private static final String DUMMY_CLASS_NAME = "IVa";
    private static final String TEACHER_FIRST_NAME = "Adam";
    private static final String TEACHER_SURNAME = "Oczytany";
    private static final String MATH_SUBJECT_NAME = "matematyka";

    @Autowired
    private TestEntityManager entityManager;

    @Autowired
    private ClassRepository classRepository;

    /**
     * Prepare data for tests.
     */
    @Before
    public void setUp() throws ParseException {
        createTestData();
    }

    /**
     * Test find class by name when it is exists.
     * Should return class object.
     */
    @Test
    public void testFindByNameIfExists() {
        ClassModel classModel = classRepository.findByName(CLASS_NAME);

        assertNotNull(classModel);
        assertEquals(CLASS_NAME, classModel.getName());
    }

    /**
     * Test find class by name when it is not exists.
     * Should return null.
     */
    @Test
    public void testFindByNameNotExists() {
        ClassModel classModel = classRepository.findByName("DUMMY CLASS");

        assertNull(classModel);
    }

    /**
     * Test find all students from class specified by name.
     * Should return three students from class Ia.
     */
    @Test
    public void testGetAllStudents() {
        List<StudentModel> students = classRepository.findAllStudents(CLASS_NAME);

        assertNotNull(students);
        assertEquals(3, students.size());
    }

    /**
     * Test find all students from class specified by name when it is empty.
     * Should return empty list of students.
     */
    @Test
    public void testGetAllStudentsNotFound() {
        List<StudentModel> students =classRepository.findAllStudents(DUMMY_CLASS_NAME);

        assertNotNull(students);
        assertTrue(students.isEmpty());
    }

    /**
     * Test find teacher assigned to class with the specified name.
     * Should return one teacher.
     */
    @Test
    public void testFindTeacherFromClassByName() {
        TeacherModel teacher = classRepository.findTeacherFromClassByName(CLASS_NAME);

        assertNotNull(teacher);
        assertEquals(TEACHER_FIRST_NAME, teacher.getFirstName());
        assertEquals(TEACHER_SURNAME, teacher.getSurname());
    }

    /**
     * Test find teacher assigned to class with the specified name when not exists.
     * Should return null.
     */
    @Test
    public void testFindTeacherFromClassByNameNotFound() {
        TeacherModel teacher = classRepository.findTeacherFromClassByName(DUMMY_CLASS_NAME);

        assertNull(teacher);
    }

    /**
     * Test find all meetings associated to class with the specified name.
     * Should return list of all meetings for class.
     */
    @Test
    public void testFindAllMeetingsFromClassByName() {
        List<MeetingModel> meeetings = classRepository.findAllMeetingsFromClassByName(CLASS_NAME);

        assertNotNull(meeetings);
        assertEquals(2, meeetings.size());
    }

    /**
     * Test find all meetings associated to class with the specified name when non of meetings is exists.
     * Should return empty list.
     */
    @Test
    public void testFindAllMeetingsFromClassByNameNotFound() {
        List<MeetingModel> meetings = classRepository.findAllMeetingsFromClassByName(DUMMY_CLASS_NAME);

        assertNotNull(meetings);
        assertTrue(meetings.isEmpty());
    }

    /**
     * Test find all meetings associated to class with the specified name and date.
     * Should return one meeting.
     */
    @Test
    public void testFindMeetingsForClassByNameAndDate() throws ParseException {
        List<MeetingModel> meetings = classRepository.findMeetingsForClassByNameAndDate(CLASS_NAME,
                new SimpleDateFormat("dd/mm/yyyy").parse("24/11/2018"));

        assertNotNull(meetings);
        assertEquals(1, meetings.size());
    }

    /**
     * Test find all meetings associated to class with the specified name and date when any meetings found.
     * Should return one meeting.
     */
    @Test
    public void testFindMeetingsForClassByNameAndDateNotFound() throws ParseException {
        List<MeetingModel> meetings = classRepository.findMeetingsForClassByNameAndDate(CLASS_NAME,
                new SimpleDateFormat("dd/mm/yyyy").parse("01/11/2018"));

        assertNotNull(meetings);
        assertTrue(meetings.isEmpty());
    }

    /**
     * Find meetings for class between two dates.
     */
    @Test
    public void testFindMeetingsForClassBetweenDates() throws ParseException {
        List<MeetingModel> meetings = classRepository.findMeetingsForClassBetweenDates(CLASS_NAME,
                new SimpleDateFormat("dd/mm/yyyy").parse("24/11/2018"),
                new SimpleDateFormat("dd/mm/yyyy").parse("26/11/2018"));

        assertNotNull(meetings);
        assertEquals(2, meetings.size());
    }

    /**
     * Find meetings for class between two dates when not found.
     */
    @Test
    public void testFindMeetingsForClassBetweenDatesNotFound() throws ParseException {
        List<MeetingModel> meetings = classRepository.findMeetingsForClassBetweenDates(CLASS_NAME,
                new SimpleDateFormat("dd/mm/yyyy").parse("31/11/2018"),
                new SimpleDateFormat("dd/mm/yyyy").parse("06/12/2018"));

        assertNotNull(meetings);
        assertTrue(meetings.isEmpty());
    }

    /**
     * Insert test data to database.
     */
    private void createTestData() throws ParseException {
        StudentModel student_1 = new StudentModel();
        StudentModel student_2 = new StudentModel();
        StudentModel student_3 = new StudentModel();

        TeacherModel teacher_1 = new TeacherModel();

        ClassModel class_1 = new ClassModel();
        ClassModel class_2 = new ClassModel();

        RoleModel role_1 = new RoleModel();
        RoleModel role_2 = new RoleModel();

        MeetingModel meeting_1 = new MeetingModel();
        MeetingModel meeting_2 = new MeetingModel();

        SubjectModel subject_1 = new SubjectModel();
        SubjectModel subject_2 = new SubjectModel();

        role_1.setName("STUDENT");
        role_2.setName("TEACHER");

        student_1.setFirstName("Jan");
        student_1.setSurname("Nowak");

        student_2.setFirstName("Anna");
        student_2.setSurname("Dzik");

        student_3.setFirstName("Stefan");
        student_3.setSurname("Domagała");

        teacher_1.setFirstName(TEACHER_FIRST_NAME);
        teacher_1.setSurname(TEACHER_SURNAME);

        student_1.setClassModel(class_1);
        student_2.setClassModel(class_1);
        student_3.setClassModel(class_1);

        student_1.setRole(role_1);
        student_2.setRole(role_1);
        student_3.setRole(role_1);

        teacher_1.setRole(role_2);

        List<StudentModel> students = new ArrayList<>();
        students.add(student_1);
        students.add(student_2);
        students.add(student_3);

        class_1.setName(CLASS_NAME);
        class_2.setName(DUMMY_CLASS_NAME);
        class_1.setStudents(students);
        class_1.setTeacher(teacher_1);

        meeting_1.setClassModel(class_1);
        meeting_1.setTeacher(teacher_1);

        Date meeting_1_date = new SimpleDateFormat("dd/mm/yyyy").parse("24/11/2018");
        Date meeting_2_date = new SimpleDateFormat("dd/mm/yyyy").parse("25/11/2018");

        meeting_1.setDate(meeting_1_date);
        meeting_2.setDate(meeting_2_date);

        meeting_2.setClassModel(class_1);
        meeting_2.setTeacher(teacher_1);

        subject_1.setName(MATH_SUBJECT_NAME);
        subject_1.setTeacher(teacher_1);
        subject_2.setName("język polski");
        subject_2.setTeacher(teacher_1);

        meeting_1.setSubject(subject_1);
        meeting_2.setSubject(subject_2);

        class_1.setMeetings(Arrays.asList(meeting_1, meeting_2));

        entityManager.persist(role_1);
        entityManager.persist(role_2);
        entityManager.persist(teacher_1);
        entityManager.persist(class_1);
        entityManager.persist(class_2);
        entityManager.persist(subject_1);
        entityManager.persist(subject_2);
        entityManager.persist(meeting_1);
        entityManager.persist(meeting_2);
        entityManager.persist(student_1);
        entityManager.persist(student_2);
        entityManager.persist(student_3);
        entityManager.flush();
    }
}