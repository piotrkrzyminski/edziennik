package pl.dziennik.facades.populators;

public interface Populator<SOURCE, TARGET> {

    /**
     * Populates data from model to data object.
     *
     * @param s source model object.
     * @param t target data object.
     */
    void populate(SOURCE s, TARGET t);
}
