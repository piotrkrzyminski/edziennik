package pl.dziennik.core.repository.user;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.dziennik.model.meetings.SubjectModel;

import java.util.List;

public interface SubjectRepository extends JpaRepository<SubjectModel, Long> {

}
