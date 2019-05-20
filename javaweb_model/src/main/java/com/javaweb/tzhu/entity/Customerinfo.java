package com.javaweb.tzhu.entity;

public class Customerinfo {
    private Integer customerid;

    private String customername;

    private String customerpass;

    private String customersex;

    private String customerbirthday;

    private String customeremail;

    private String customerphone;

    private Integer customercredit;

    private String realname;

    public Integer getCustomerid() {
        return customerid;
    }

    public void setCustomerid(Integer customerid) {
        this.customerid = customerid;
    }

    public String getCustomername() {
        return customername;
    }

    public void setCustomername(String customername) {
        this.customername = customername == null ? null : customername.trim();
    }

    public String getCustomerpass() {
        return customerpass;
    }

    public void setCustomerpass(String customerpass) {
        this.customerpass = customerpass == null ? null : customerpass.trim();
    }

    public String getCustomersex() {
        return customersex;
    }

    public void setCustomersex(String customersex) {
        this.customersex = customersex == null ? null : customersex.trim();
    }

    public String getCustomerbirthday() {
        return customerbirthday;
    }

    public void setCustomerbirthday(String customerbirthday) {
        this.customerbirthday = customerbirthday == null ? null : customerbirthday.trim();
    }

    public String getCustomeremail() {
        return customeremail;
    }

    public void setCustomeremail(String customeremail) {
        this.customeremail = customeremail == null ? null : customeremail.trim();
    }

    public String getCustomerphone() {
        return customerphone;
    }

    public void setCustomerphone(String customerphone) {
        this.customerphone = customerphone == null ? null : customerphone.trim();
    }

    public Integer getCustomercredit() {
        return customercredit;
    }

    public void setCustomercredit(Integer customercredit) {
        this.customercredit = customercredit;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname == null ? null : realname.trim();
    }
}