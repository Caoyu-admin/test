package my.webapp.entity;

public class Money {
    private Double allMoney;
    private Double monthMoney;
    private Double weekMoney;
    private Integer uid;

    public Money() {
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Double getAllMoney() {
        return allMoney;
    }

    public void setAllMoney(Double allMoney) {
        this.allMoney = allMoney;
    }

    public Double getMonthMoney() {
        return monthMoney;
    }

    public void setMonthMoney(Double monthMoney) {
        this.monthMoney = monthMoney;
    }

    public Double getWeekMoney() {
        return weekMoney;
    }

    public void setWeekMoney(Double weekMoney) {
        this.weekMoney = weekMoney;
    }
}
