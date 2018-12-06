package pl.dziennik.core.services.meetings.impl;

import org.apache.commons.lang3.Validate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.dziennik.core.repository.meetings.PresentRepository;
import pl.dziennik.core.services.meetings.PresentService;
import pl.dziennik.model.user.PresentModel;

@Service
public class DefaultPresentService implements PresentService {

    @Autowired
    private PresentRepository presentRepository;

    @Override
    public void save(PresentModel present) {
        Validate.notNull(present);
        presentRepository.save(present);
    }
}
