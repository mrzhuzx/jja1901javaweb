package com.javaweb.tzhu.entity;

public class Orderinfo {
    private Integer ordid;

    private Integer customerid;

    private String ordertime;

    private Integer addressid;

    private Double orderpricesum;

    private String orderpayment;

    private String orderdelivery;

    private String ordnumber;

    public Integer getOrdid() {
        return ordid;
    }

    public void setOrdid(Integer ordid) {
        this.ordid = ordid;
    }

    public Integer getCustomerid() {
        return customerid;
    }

    public void setCustomerid(Integer customerid) {
        this.customerid = customerid;
    }

    public String getOrdertime() {
        return ordertime;
    }

    public void setOrdertime(String ordertime) {
        this.ordertime = ordertime == null ? null : ordertime.trim();
    }

    public Integer getAddressid() {
        return addressid;
    }

    public void setAddressid(Integer addressid) {
        this.addressid = addressid;
    }

    public Double getOrderpricesum() {
        return orderpricesum;
    }

    public void setOrderpricesum(Double orderpricesum) {
        this.orderpricesum = orderpricesum;
    }

    public String getOrderpayment() {
        return orderpayment;
    }

    public void setOrderpayment(String orderpayment) {
        this.orderpayment = orderpayment == null ? null : orderpayment.trim();
    }

    public String getOrderdelivery() {
        return orderdelivery;
    }

    public void setOrderdelivery(String orderdelivery) {
        this.orderdelivery = orderdelivery == null ? null : orderdelivery.trim();
    }

    public String getOrdnumber() {
        return ordnumber;
    }

    public void setOrdnumber(String ordnumber) {
        this.ordnumber = ordnumber == null ? null : ordnumber.trim();
    }
}