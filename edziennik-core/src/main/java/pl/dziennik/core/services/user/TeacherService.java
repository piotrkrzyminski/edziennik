package pl.dziennik.core.services.user;

import pl.dziennik.model.user.TeacherModel;

public interface TeacherService {

    TeacherModel getTeacherForEmail(final String email);
}
