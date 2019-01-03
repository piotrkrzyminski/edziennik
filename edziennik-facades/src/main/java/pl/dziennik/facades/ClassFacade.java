package pl.dziennik.facades;

import pl.dziennik.facades.data.grades.SubjectData;
import pl.dziennik.facades.data.user.ClassData;
import pl.dziennik.facades.data.user.StudentData;

import java.util.List;

public interface ClassFacade {

    /**
     * Zwraca listę studentów przypisanych do danej klasy.
     *
     * @param className nazwa klasy.
     * @return lista studentów danej klasy.
     */
    List<StudentData> getStudentsFromClass(final String className);

    List<StudentData> getStudentsFromClas(final long classId);

    List<ClassData> findAll();

    ClassData findById(final long id);

    List<SubjectData> findSubjectsForClass(final long id);
}
