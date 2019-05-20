package com.javaweb.tzhu.entity;

public class Cart {
    private Integer cartid;

    private Integer userid;

    private Integer foodid;

    private Integer foodcount;

    public Integer getCartid() {
        return cartid;
    }

    public void setCartid(Integer cartid) {
        this.cartid = cartid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getFoodid() {
        return foodid;
    }

    public void setFoodid(Integer foodid) {
        this.foodid = foodid;
    }

    public Integer getFoodcount() {
        return foodcount;
    }

    public void setFoodcount(Integer foodcount) {
        this.foodcount = foodcount;
    }
}