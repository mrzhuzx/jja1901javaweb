package com.javaweb.tzhu.entity;

/**
 *   java entity
 */
public class FoodStyple {

    private int foodStyleId;
    private String foodStyleName;

    public FoodStyple() {
    }

    public FoodStyple(String foodStyleName) {
        this.foodStyleName = foodStyleName;
    }

    public FoodStyple(int foodStyleId, String foodStyleName) {
        this.foodStyleId = foodStyleId;
        this.foodStyleName = foodStyleName;
    }

    public int getFoodStyleId() {
        return foodStyleId;
    }

    public void setFoodStyleId(int foodStyleId) {
        this.foodStyleId = foodStyleId;
    }

    public String getFoodStyleName() {
        return foodStyleName;
    }

    public void setFoodStyleName(String foodStyleName) {
        this.foodStyleName = foodStyleName;
    }

    @Override
    public String toString() {
        return "FoodStyple{" +
                "foodStyleId=" + foodStyleId +
                ", foodStyleName='" + foodStyleName + '\'' +
                '}';
    }
}
