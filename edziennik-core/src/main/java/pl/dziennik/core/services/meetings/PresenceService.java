package pl.dziennik.core.services.meetings;

import pl.dziennik.model.user.PresenceModel;

import java.util.Date;
import java.util.List;

public interface PresenceService {

    /**
     * Zapisuje informacje o obecnosci.
     *
     * @param present obiekt przechowujący informacje o obecności.
     */
    void save(PresenceModel present);

    /**
     * Zapisuje listę danych.
     *
     * @param presentList lista informacji o obecnosci.
     */
    default void saveAll(List<PresenceModel> presentList) {
        for (PresenceModel present : presentList) {
            save(present);
        }
    }

    boolean isStudentPresentOnMeeting(final Date date,final Long meetingId, final Long studentId);
}
