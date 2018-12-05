package pl.dziennik.core.repository.user;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.dziennik.model.meetings.SubjectModel;

public interface SubjectRepository extends JpaRepository<SubjectModel, Long> {

}
