package pl.dziennik.facades;

import pl.dziennik.facades.data.meetings.PresentData;
import pl.dziennik.facades.exceptions.SaveItemException;

import java.util.List;

public interface PresentFacade {

    void save(PresentData presentData) throws SaveItemException;

    default void saveAll(List<PresentData> presentDataList) throws SaveItemException {
        for (PresentData presentData : presentDataList) {
            save(presentData);
        }
    }
}
