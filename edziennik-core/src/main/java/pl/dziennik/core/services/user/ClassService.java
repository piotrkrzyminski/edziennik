package pl.dziennik.core.services.user;

import pl.dziennik.model.user.ClassModel;
import pl.dziennik.model.user.StudentModel;

import java.util.List;

public interface ClassService {

    /**
     * Zwraca listę uczniów na podstawie nazwy klasy do jakiej są przypisani.
     *
     * @param className nazwa klasy.
     * @return lista studentów przypisana do klasy lub pusta lista, jeżeli klasa nie istnieje.
     */
    List<StudentModel> getStudentsFromClass(final String className);
}
