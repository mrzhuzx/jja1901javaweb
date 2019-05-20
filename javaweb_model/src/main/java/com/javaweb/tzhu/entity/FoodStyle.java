package com.javaweb.tzhu.entity;

/**
 *   java entity
 */
public class FoodStyle {

    private Integer foodStyleId;
    private String foodStyleName;

    public FoodStyle() {
    }

    public FoodStyle(String foodStyleName) {
        this.foodStyleName = foodStyleName;
    }

    public FoodStyle(int foodStyleId, String foodStyleName) {
        this.foodStyleId = foodStyleId;
        this.foodStyleName = foodStyleName;
    }


    public Integer getFoodStyleId() {
        return foodStyleId;
    }

    public void setFoodStyleId(Integer foodStyleId) {
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
