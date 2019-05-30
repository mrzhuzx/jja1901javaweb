package com.javaweb.tzhu.entity;

import lombok.Data;


@Data
public class Cart {


    /**
     * 购物车ID
     */
    private Integer cartid;
    /**
     * 客户ID
     */
    private Integer userid;
    /**
     * 产品Id
     */
    private Integer foodid;
    /**
     * 产品数量（减数量）
     */
    private Integer foodcount;


}