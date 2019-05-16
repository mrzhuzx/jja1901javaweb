package com.javaweb.tzhu.entity;

public class Admininfo {
    private Integer adminid;

    private String adminname;

    private String adminpass;

    private Integer adminstyle;

    private String adminemail;

    public Integer getAdminid() {
        return adminid;
    }

    public void setAdminid(Integer adminid) {
        this.adminid = adminid;
    }

    public String getAdminname() {
        return adminname;
    }

    public void setAdminname(String adminname) {
        this.adminname = adminname == null ? null : adminname.trim();
    }

    public String getAdminpass() {
        return adminpass;
    }

    public void setAdminpass(String adminpass) {
        this.adminpass = adminpass == null ? null : adminpass.trim();
    }

    public Integer getAdminstyle() {
        return adminstyle;
    }

    public void setAdminstyle(Integer adminstyle) {
        this.adminstyle = adminstyle;
    }

    public String getAdminemail() {
        return adminemail;
    }

    public void setAdminemail(String adminemail) {
        this.adminemail = adminemail == null ? null : adminemail.trim();
    }
}