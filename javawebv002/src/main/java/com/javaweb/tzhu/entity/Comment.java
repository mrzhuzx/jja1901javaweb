package com.javaweb.tzhu.entity;

import java.util.Date;

public class Comment {
    private Integer commentid;

    private Integer orderid;

    private Integer customerid;

    private String customercomment;

    private Date commenttime;

    private String admincomment;

    public Integer getCommentid() {
        return commentid;
    }

    public void setCommentid(Integer commentid) {
        this.commentid = commentid;
    }

    public Integer getOrderid() {
        return orderid;
    }

    public void setOrderid(Integer orderid) {
        this.orderid = orderid;
    }

    public Integer getCustomerid() {
        return customerid;
    }

    public void setCustomerid(Integer customerid) {
        this.customerid = customerid;
    }

    public String getCustomercomment() {
        return customercomment;
    }

    public void setCustomercomment(String customercomment) {
        this.customercomment = customercomment == null ? null : customercomment.trim();
    }

    public Date getCommenttime() {
        return commenttime;
    }

    public void setCommenttime(Date commenttime) {
        this.commenttime = commenttime;
    }

    public String getAdmincomment() {
        return admincomment;
    }

    public void setAdmincomment(String admincomment) {
        this.admincomment = admincomment == null ? null : admincomment.trim();
    }
}