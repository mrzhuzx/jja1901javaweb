package com.javaweb.tzhu.entity;

public class Food {
    private Integer foodid;

    private String foodname;

    private String foodintroduce;

    private Double foodprice;

    private Integer foodstyleid;

    private Integer foodcount;

    private Integer lunchid;

    private String imagespath;

    public Integer getFoodid() {
        return foodid;
    }

    public void setFoodid(Integer foodid) {
        this.foodid = foodid;
    }

    public String getFoodname() {
        return foodname;
    }

    public void setFoodname(String foodname) {
        this.foodname = foodname == null ? null : foodname.trim();
    }

    public String getFoodintroduce() {
        return foodintroduce;
    }

    public void setFoodintroduce(String foodintroduce) {
        this.foodintroduce = foodintroduce == null ? null : foodintroduce.trim();
    }

    public Double getFoodprice() {
        return foodprice;
    }

    public void setFoodprice(Double foodprice) {
        this.foodprice = foodprice;
    }

    public Integer getFoodstyleid() {
        return foodstyleid;
    }

    public void setFoodstyleid(Integer foodstyleid) {
        this.foodstyleid = foodstyleid;
    }

    public Integer getFoodcount() {
        return foodcount;
    }

    public void setFoodcount(Integer foodcount) {
        this.foodcount = foodcount;
    }

    public Integer getLunchid() {
        return lunchid;
    }

    public void setLunchid(Integer lunchid) {
        this.lunchid = lunchid;
    }

    public String getImagespath() {
        return imagespath;
    }

    public void setImagespath(String imagespath) {
        this.imagespath = imagespath == null ? null : imagespath.trim();
    }
}