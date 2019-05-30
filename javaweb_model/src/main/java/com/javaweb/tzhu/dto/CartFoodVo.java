package com.javaweb.tzhu.dto;


import lombok.Data;

@Data
public class CartFoodVo {

    /**
     * 客户ID
     */
    private Integer userid;
    /**
     * 购物车ID
     */
    private Integer cartid;

    /**
     * 产品Id
     */
    private Integer foodid;
    /**
     * 产品数量（减数量）
     */
    private Integer foodcount;
    private String foodName;//产品名字
    private Double foodPrice;//产品价格
    private String imagesPath;//产品图片

}
