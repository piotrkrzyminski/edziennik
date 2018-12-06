package pl.dziennik.core.repository.meetings;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.dziennik.model.user.PresentModel;

public interface PresentRepository extends JpaRepository<PresentModel, Long> {
}
