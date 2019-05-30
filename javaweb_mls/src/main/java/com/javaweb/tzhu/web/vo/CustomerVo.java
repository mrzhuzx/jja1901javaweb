package com.javaweb.tzhu.web.vo;


import lombok.Data;

/**
 * 客户的视图对象
 */
@Data
public class CustomerVo {

    private Integer customerid;

    private String customername;

    private String customersex;

    private String customerbirthday;

    private String customeremail;

    private String customerphone;

}
