package com.javaweb.tzhu.entity;


import lombok.Data;

/**
 * 食物
 * foodId   
 * foodStyleId  种类
 * foodName
 * foodIntegerroduce 介绍
 * foodPrice
 * foodCount    库存
 * lunchId
 * imagesPath    
 *
 */

public class Food {
	private Integer foodId;
	private String foodName;     
	private	String foodIntroduce;
	private Double foodPrice;
	private Integer foodStyleId;       	
	private	Integer foodCount;         
	private	Integer lunchId;          
	private	String imagesPath;

	public Food() {
	}

	public Food(Integer foodId, String foodName, String foodIntroduce, Double foodPrice, Integer foodStyleId, Integer foodCount, Integer lunchId, String imagesPath) {
		this.foodId = foodId;
		this.foodName = foodName;
		this.foodIntroduce = foodIntroduce;
		this.foodPrice = foodPrice;
		this.foodStyleId = foodStyleId;
		this.foodCount = foodCount;
		this.lunchId = lunchId;
		this.imagesPath = imagesPath;
	}

	public Integer getFoodId() {
		return foodId;
	}

	public void setFoodId(Integer foodId) {
		this.foodId = foodId;
	}

	public String getFoodName() {
		return foodName;
	}

	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}

	public String getFoodIntroduce() {
		return foodIntroduce;
	}

	public void setFoodIntroduce(String foodIntroduce) {
		this.foodIntroduce = foodIntroduce;
	}

	public Double getFoodPrice() {
		return foodPrice;
	}

	public void setFoodPrice(Double foodPrice) {
		this.foodPrice = foodPrice;
	}

	public Integer getFoodStyleId() {
		return foodStyleId;
	}

	public void setFoodStyleId(Integer foodStyleId) {
		this.foodStyleId = foodStyleId;
	}

	public Integer getFoodCount() {
		return foodCount;
	}

	public void setFoodCount(Integer foodCount) {
		this.foodCount = foodCount;
	}

	public Integer getLunchId() {
		return lunchId;
	}

	public void setLunchId(Integer lunchId) {
		this.lunchId = lunchId;
	}

	public String getImagesPath() {
		return imagesPath;
	}

	public void setImagesPath(String imagesPath) {
		this.imagesPath = imagesPath;
	}

	@Override
	public String toString() {
		return "Food{" +
				"foodId=" + foodId +
				", foodName='" + foodName + '\'' +
				", foodIntroduce='" + foodIntroduce + '\'' +
				", foodPrice=" + foodPrice +
				", foodStyleId=" + foodStyleId +
				", foodCount=" + foodCount +
				", lunchId=" + lunchId +
				", imagesPath='" + imagesPath + '\'' +
				'}';
	}
}
