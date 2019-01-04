package pl.dziennik.core.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.dziennik.model.FinalGradeModel;
import pl.dziennik.model.StudentModel;
import pl.dziennik.model.SubjectModel;

/**
 * Repository for {@link FinalGradeModel}.
 */
public interface FinalGradesRepository extends JpaRepository<FinalGradeModel, Long> {

    /**
     * Get final grade for specific subject and student.
     *
     * @param subject subject.
     * @param student student.
     * @return final grade for student from specific subject.
     */
    @Query("SELECT g FROM FinalGradeModel g WHERE g.subject = ?1 AND g.student = ?2")
    FinalGradeModel getGradeForSubjectAndStudnet(final SubjectModel subject, final StudentModel student);
}
