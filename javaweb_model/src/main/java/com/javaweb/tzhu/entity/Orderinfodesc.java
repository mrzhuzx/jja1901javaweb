package com.javaweb.tzhu.entity;


import lombok.Data;

/**
 * 定单明细
 */
@Data
public class Orderinfodesc {
    /**
     * 定单明细ID
     */
    private Integer orddtlid;
    /**
     * 定单ID外键引用
     */
    private Integer ordid;

    private Integer foodid;

    private Integer foodcount;

}