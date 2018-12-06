package pl.dziennik.facades.exceptions;

public class SaveItemException extends Exception {

    public SaveItemException() {
    }

    public SaveItemException(String message) {
        super(message);
    }
}
