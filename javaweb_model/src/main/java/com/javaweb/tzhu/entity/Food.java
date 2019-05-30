package com.javaweb.tzhu.entity;


import lombok.Data;

@Data
public class Food {
    private Integer foodId;

    private String foodName;//产品名字

    private String foodIntroduce;

    private Double foodPrice;//产品价格

    private Integer foodStyleId;

    private Integer foodCount;

    private Integer lunchId;

    private String imagesPath;//产品图片

}