package pl.dziennik.front.forms;

import javax.validation.constraints.NotNull;

/**
 * Obiekt wykorzystywany przy formularzu spotkań.
 */
public class MeetingForm {

    /**
     * Identyfikator spotkania.
     */
    private int id;
    /**
     * Data spotkania.
     */
    @NotNull
    private String date;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}
