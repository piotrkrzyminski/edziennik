package pl.dziennik.core.services;

import pl.dziennik.core.exceptions.ItemNotFoundException;
import pl.dziennik.model.ClassModel;
import pl.dziennik.model.GradeModel;
import pl.dziennik.model.ParentModelAbstract;
import pl.dziennik.model.StudentModel;

import java.util.List;
import java.util.Set;

public interface StudentService {

    /**
     * Zwraca ucznia na podstawie unikatowego identyfikatora.
     *
     * @param id identyfikator ucznia.
     * @return uczeń z unikatowym identyfikatorem.
     */
    StudentModel getStudentById(Long id) throws ItemNotFoundException;

    /**
     * Get student by email.
     *
     * @param email student's email.
     * @return student if exists or null if not.
     */
    StudentModel getStudentByEmail(final String email);

    /**
     * Get student's class by his email.
     *
     * @param email student's email.
     * @return class asociated to student or null if not exists.
     */
    ClassModel getClassByStudentEmail(final String email);

    /**
     * Get student's parents by his email.
     *
     * @param email student's email.
     * @return collection of student's parents or empty collection if parents was not found.
     */
    Set<ParentModelAbstract> getParentsByStudentEmail(final String email);

    /**
     * Get all student's grades by his email.
     *
     * @param email student's email.
     * @return collection of student's grades.
     */
    List<GradeModel> getAllGradesByStudentEmail(final String email);
}
