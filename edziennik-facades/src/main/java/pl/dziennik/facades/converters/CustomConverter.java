package pl.dziennik.facades.converters;

import org.springframework.core.convert.converter.Converter;

import java.util.ArrayList;
import java.util.List;

public interface CustomConverter<S, T> extends Converter<S, T> {

    default List<T> convertAll(List<S> sList) {
        List<T> result = new ArrayList<>();
        for(S s : sList) {
            T t = convert(s);
            result.add(t);
        }

        return result;
    }
}
