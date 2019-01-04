package pl.dziennik.core.exceptions;

/**
 * Exception thrown when item was not found in datasource.
 */
public class ItemNotFoundException extends Exception {

    public ItemNotFoundException(String message) {
        super(message);
    }
}
