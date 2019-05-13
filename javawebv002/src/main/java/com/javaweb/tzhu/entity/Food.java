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
@Data
public class Food {
	private Integer foodId;
	private String foodName;     
	private	String foodIntroduce;
	private Double foodPrice;
	private Integer foodStyleId;       	
	private	Integer foodCount;         
	private	Integer lunchId;          
	private	String imagesPath;
	


	
}
