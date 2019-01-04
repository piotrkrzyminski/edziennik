package pl.dziennik.core.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.dziennik.model.MeetingModel;

import java.util.List;

/**
 * Repository for {@link MeetingModel}.
 */
public interface MeetingRepository extends JpaRepository<MeetingModel, Long> {

    /**
     * Get meeting by unique id value.
     *
     * @param id meeting id.
     * @return meeting with specified id or null if not exists.
     */
    @Query("SELECT m FROM MeetingModel m WHERE m.id = ?1")
    MeetingModel getMeetingById(final Long id);

    /**
     * Get all meetings for specific class.
     *
     * @param className class id.
     * @return meetings for specified class.
     */
    @Query("SELECT m FROM MeetingModel m INNER JOIN m.classModel c WHERE c.name = ?1")
    List<MeetingModel> findMeetingsByClassName(final String className);

    /**
     * Get all meetings for teacher by his email address.
     *
     * @param email teacher email address.
     * @return list of all meetings for teacher.
     */
    @Query("SELECT m FROM MeetingModel m INNER JOIN m.teacher t WHERE t.email = ?1")
    List<MeetingModel> findMeetingsByTeacherEmail(final String email);
}
