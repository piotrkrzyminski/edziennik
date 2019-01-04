package pl.dziennik.core.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.dziennik.model.GradeSetModel;

/**
 * Repository for {@link GradeSetModel}.
 */
public interface GradeSetRepository extends JpaRepository<GradeSetModel, Long> {

}
