package com.javaweb.tzhu.web;

public class TestString {

    public static void main(String[] args) {


        //xxxh@163.com   练习

        String  url="webItem/xxh.jsp";
        String login="xxh";
        System.out.println(url.lastIndexOf(".jsp"));

        int  begin=url.lastIndexOf(".jsp") - login.length();
        int end=url.lastIndexOf(".jsp");
         String newString=url.substring(begin,end);

        System.out.println(newString);



    }
}
