package com.javaweb.tzhu.web.admin;

import com.javaweb.tzhu.dao.FoodStyleDao;
import com.javaweb.tzhu.dao.impl.FoodStyleDaoImpl;
import com.javaweb.tzhu.entity.FoodStyle;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet(name = "foodStyleServlet",urlPatterns = "/fs")
public class FoodStyleServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        this.doPost(req, resp); //

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        String todo = req.getParameter("todo");

        if ("search".equals(todo)) {

            FoodStyleDao dao=new FoodStyleDaoImpl();

            List<FoodStyle> foodStyleList = dao.search();
            //req.setAttribute("key",Object);
            //req.getAttribute("key")

            req.setAttribute("foodStyleList",foodStyleList);

            req.getRequestDispatcher("foodstyle.jsp").forward(req,resp);


        }
    }
}
