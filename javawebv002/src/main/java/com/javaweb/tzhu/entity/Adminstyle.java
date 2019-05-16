package com.javaweb.tzhu.entity;

public class Adminstyle {
    private Integer adminstyleid;

    private String adminname;

    public Integer getAdminstyleid() {
        return adminstyleid;
    }

    public void setAdminstyleid(Integer adminstyleid) {
        this.adminstyleid = adminstyleid;
    }

    public String getAdminname() {
        return adminname;
    }

    public void setAdminname(String adminname) {
        this.adminname = adminname == null ? null : adminname.trim();
    }
}