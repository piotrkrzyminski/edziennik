package pl.dziennik.core.repository.user;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.dziennik.model.user.StudentModel;

public interface StudentRepository extends JpaRepository<StudentModel, Long> {


}
