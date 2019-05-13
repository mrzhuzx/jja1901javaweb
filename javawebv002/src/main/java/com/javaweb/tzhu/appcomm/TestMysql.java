package com.javaweb.tzhu.appcomm;

public class TestMysql {

    public static void main(String[] args) {

  // mysql 8
        BaseDaoMysql  jdbc=new BaseDaoMysql();
        System.out.println(" conn is : ");
        System.out.println(jdbc.getConn());


    }
}
