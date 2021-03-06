package pl.dziennik.core.services;

import pl.dziennik.model.SubjectModel;
import pl.dziennik.model.ClassModel;
import pl.dziennik.model.StudentModel;

import java.util.List;
import java.util.Set;

public interface ClassService {

    /**
     * Zwraca listę uczniów na podstawie nazwy klasy do jakiej są przypisani.
     *
     * @param className nazwa klasy.
     * @return lista studentów przypisana do klasy lub pusta lista, jeżeli klasa nie istnieje.
     */
    List<StudentModel> getStudentsFromClass(final String className);

    List<StudentModel> getStudentsFromClass(final long classId);

    ClassModel getClassForName(final String name);

    List<ClassModel> findAll();

    ClassModel findById(final long id);

    Set<SubjectModel> getAllSubjectsForClassById(final long id);
}
