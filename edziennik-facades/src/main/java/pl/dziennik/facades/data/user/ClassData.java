package pl.dziennik.facades.data.user;

import pl.dziennik.facades.data.grades.SubjectData;

import java.util.List;

public class ClassData {

    private Long id;

    private String name;

    private List<SubjectData> subjects;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<SubjectData> getSubjects() {
        return subjects;
    }

    public void setSubjects(List<SubjectData> subjects) {
        this.subjects = subjects;
    }
}
