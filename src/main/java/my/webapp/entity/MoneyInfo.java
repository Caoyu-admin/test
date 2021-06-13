package my.webapp.entity;

public class MoneyInfo {
    private Integer id;
    private String breakFirst;
    private String lunch;
    private String dinner;
    private String shopping;
    private String entertainment;
    private Integer uid;
    public MoneyInfo() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBreakFirst() {
        return breakFirst;
    }

    public void setBreakFirst(String breakFirst) {
        this.breakFirst = breakFirst;
    }

    public String getLunch() {
        return lunch;
    }

    public void setLunch(String lunch) {
        this.lunch = lunch;
    }

    public String getDinner() {
        return dinner;
    }

    public void setDinner(String dinner) {
        this.dinner = dinner;
    }

    public String getShopping() {
        return shopping;
    }

    public void setShopping(String shopping) {
        this.shopping = shopping;
    }

    public String getEntertainment() {
        return entertainment;
    }

    public void setEntertainment(String entertainment) {
        this.entertainment = entertainment;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }
}
