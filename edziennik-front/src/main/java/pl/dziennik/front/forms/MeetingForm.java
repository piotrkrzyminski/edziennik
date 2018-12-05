package pl.dziennik.front.forms;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * Obiekt wykorzystywany przy formularzu spotkań.
 */
public class MeetingForm {

    /**
     * Numer kolumn (dzień tygodnia).
     */
    @NotNull
    @Size(min = 1, max = 2)
    private int column;

    /**
     * Numer wiersza (numer lekcji).
     */
    @NotNull
    @Size(min = 1, max = 2)
    private int row;

    /**
     * Data spotkania.
     */
    @NotNull
    private String date;

    public int getColumn() {
        return column;
    }

    public void setColumn(int column) {
        this.column = column;
    }

    public int getRow() {
        return row;
    }

    public void setRow(int row) {
        this.row = row;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}
