package pl.dziennik.facades.populators.impl;

import org.springframework.stereotype.Component;
import pl.dziennik.facades.data.SubjectData;
import pl.dziennik.facades.populators.Populator;
import pl.dziennik.model.SubjectModel;

@Component
public class SubjectPopulator implements Populator<SubjectModel, SubjectData> {

    @Override
    public void populate(SubjectModel s, SubjectData t) {
        t.setId(s.getId());
        t.setName(s.getName());
    }
}
