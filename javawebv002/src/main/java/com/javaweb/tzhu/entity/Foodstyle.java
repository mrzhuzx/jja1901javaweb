package com.javaweb.tzhu.entity;

public class Foodstyle {
    private Integer foodstyleid;

    private String foodstylename;

    public Integer getFoodstyleid() {
        return foodstyleid;
    }

    public void setFoodstyleid(Integer foodstyleid) {
        this.foodstyleid = foodstyleid;
    }

    public String getFoodstylename() {
        return foodstylename;
    }

    public void setFoodstylename(String foodstylename) {
        this.foodstylename = foodstylename == null ? null : foodstylename.trim();
    }
}