package com.javaweb.tzhu.web.admin;

import com.javaweb.tzhu.entity.Admininfo;
import com.javaweb.tzhu.web.vo.AdminVo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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

            req.setCharacterEncoding("UTF-8");
            resp.setCharacterEncoding("UTF-8"); // json

        String todo=req.getParameter("todo");

        if("adminlogin".equals(todo)){

            String  adminEmail=req.getParameter("adminEmail");
            String adminPass = req.getParameter("adminPass");

            if("admin@qq.com".equals(adminEmail)){
                //VO 业务对象
                AdminVo  adminVo=new AdminVo();
                adminVo.setAdminEmail(adminEmail);

                //放到sessionScope域中   会话域（跟踪用户信息，可以在多个页面中共享）      项目应用共享(统计在线人员)
                HttpSession session = req.getSession();
                session.setAttribute("adminVo",adminVo);
                req.getSession().removeAttribute("errMs");
                //去后面的主页
                resp.sendRedirect(req.getContextPath()+"/index.jsp");

            }


        }else if("adminLoginOut".equals(todo)){
            req.getSession().removeAttribute("errMs");
            req.getSession().removeAttribute("adminVo");//用户退出
            resp.sendRedirect(req.getContextPath()+"/login.jsp");

        }




    }
}
