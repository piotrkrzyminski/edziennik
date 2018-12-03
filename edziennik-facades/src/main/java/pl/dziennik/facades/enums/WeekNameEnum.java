package pl.dziennik.facades.enums;

public enum WeekNameEnum {

    MONDAY(1, "Poniedziałek"),
    TUESDAY(2, "Wtorek"),
    WEDNESDAY(3, "Środa"),
    THURSDAY(4, "Czwartek"),
    FRIDAY(5, "Piątek"),
    SATURDAY(6, "Sobota"),
    SUNDAY(7, "Niedziela");

    private final int dayNumber;
    private final String dayName;

    private WeekNameEnum(int dayNumber, String dayName) {
        this.dayName = dayName;
        this.dayNumber = dayNumber;
    }

    public String toString() {
        return dayName;
    }
}
