package com.javaweb.tzhu.web;

import com.javaweb.tzhu.web.vo.CustomerVo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "customerServlet",urlPatterns = "/cus")
public class CustomerServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        String op=req.getParameter("op"); //关键字，做什么业务
        if(op!=null){
            if("login".equals(op)){
                login(req, resp);//客户登录方法

            }else if("loginout".equals(op)){
                //用户退出
                loginout(req, resp);

            }



        }else{
            System.out.println(" 无效的业务层 ");

        }





    }

    private void loginout(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        req.getSession().removeAttribute("cus");
        resp.sendRedirect(req.getContextPath()+"/index.jsp");
    }

    private void login(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String customerpass=req.getParameter("customerpass");
        String customeremail=req.getParameter("customeremail");

        //创建一个客户对象
        CustomerVo cus=new CustomerVo();
        //验证客户的有效性 DAO
        if(customeremail!=null ){
            cus.setCustomeremail(customeremail);
            cus.setCustomername("罗");
            cus.setCustomerbirthday("1997-5-12");
            cus.setCustomerphone("12580");

        }
        //保存到sessionScope域中
        req.getSession().setAttribute("cus",cus);
        resp.sendRedirect(req.getContextPath()+"/index.jsp");
    }
}
