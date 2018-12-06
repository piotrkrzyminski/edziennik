package pl.dziennik.core.services.meetings;

import pl.dziennik.model.user.PresentModel;

import java.util.List;

public interface PresentService {

    /**
     * Zapisuje informacje o obecnosci.
     *
     * @param present obiekt przechowujący informacje o obecności.
     */
    void save(PresentModel present);

    /**
     * Zapisuje listę danych.
     *
     * @param presentList lista informacji o obecnosci.
     */
    default void saveAll(List<PresentModel> presentList) {
        for (PresentModel present : presentList) {
            save(present);
        }
    }
}
