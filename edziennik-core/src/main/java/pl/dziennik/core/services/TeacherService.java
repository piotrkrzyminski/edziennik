package pl.dziennik.core.services;

import pl.dziennik.model.TeacherModel;

public interface TeacherService {

    TeacherModel getTeacherForEmail(final String email);
}
