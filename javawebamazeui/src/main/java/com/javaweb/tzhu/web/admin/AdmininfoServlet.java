package com.javaweb.tzhu.web.admin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name="admininfoServlet",urlPatterns = "/ai")
public class AdmininfoServlet extends HttpServlet {


    public AdmininfoServlet() {

        System.out.println(" ##################   AdmininfoServlet ()~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        this.doPost(req,resp); //

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        String todo=req.getParameter("todo");

        if("adminlogin".equals(todo)){

            String  adminEmail=req.getParameter("adminEmail");
            String adminPass = req.getParameter("adminPass");

            if("admin@qq.com".equals(adminEmail)){

                resp.sendRedirect(req.getContextPath()+"/index.jsp");

            }


        }




    }
}
