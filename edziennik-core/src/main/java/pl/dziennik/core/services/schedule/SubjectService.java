package pl.dziennik.core.services.schedule;

import pl.dziennik.model.meetings.SubjectModel;

import java.util.List;

public interface SubjectService {

    /**
     * Wyszukuje wszystkie przedmiory prowadzone przez nauczyciela o podanym adresie email.
     *
     * @param email adres email nauczyciela.
     * @return lista przedmiotów prowadzonych przez danego nauczyciela.
     */
    List<SubjectModel> getSubjectsForTeacherWithEmail(final String email);

    /**
     * Zwraca przedmiot o podanej nazwie.
     *
     * @param name nazwa przedmiotu.
     * @return przedmiot o podanej nazwie.
     */
    SubjectModel getSubjectForName(final String name);

    SubjectModel getSubjectForId(final long id);
}
