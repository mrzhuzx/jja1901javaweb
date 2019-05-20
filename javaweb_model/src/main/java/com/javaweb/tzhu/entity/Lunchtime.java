package com.javaweb.tzhu.entity;

public class Lunchtime {
    private Integer lunchid;

    private String lunchname;

    public Integer getLunchid() {
        return lunchid;
    }

    public void setLunchid(Integer lunchid) {
        this.lunchid = lunchid;
    }

    public String getLunchname() {
        return lunchname;
    }

    public void setLunchname(String lunchname) {
        this.lunchname = lunchname == null ? null : lunchname.trim();
    }
}