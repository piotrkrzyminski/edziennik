package pl.dziennik.front.forms;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * Obiekt wykorzystywany przy formularzu spotkań.
 */
public class MeetingForm {

    /**
     * Identyfikator spotkania.
     */
    @NotNull
    @Size(min = 1, max = 4)
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
