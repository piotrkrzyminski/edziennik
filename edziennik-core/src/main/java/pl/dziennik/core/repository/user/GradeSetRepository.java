package pl.dziennik.core.repository.user;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.dziennik.model.user.GradeSetModel;

public interface GradeSetRepository extends JpaRepository<GradeSetModel, Long> {

}
