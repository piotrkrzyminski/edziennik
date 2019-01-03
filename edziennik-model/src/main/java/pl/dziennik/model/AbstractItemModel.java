package pl.dziennik.model;

import javax.persistence.*;

@MappedSuperclass
public abstract class AbstractItemModel {

    @Id
    @SequenceGenerator(name = "seq", initialValue = 1000)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "seq")
    private Long id;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
