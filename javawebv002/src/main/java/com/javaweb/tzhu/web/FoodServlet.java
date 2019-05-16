package com.javaweb.tzhu.web;

import com.javaweb.tzhu.dao.FoodDao;
import com.javaweb.tzhu.dao.impl.FoodDaoImpl;
import com.javaweb.tzhu.entity.Food;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FoodServlet",urlPatterns = {"/food"})
public class FoodServlet extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String todo=request.getParameter("todo");

        if("search".equals(todo)){

            FoodDao dao=new FoodDaoImpl();
            List<Food> foodList = dao.search(0, 0);


            request.setAttribute("foodList",foodList);
            request.getRequestDispatcher("demo01.jsp").forward(request,response);

        }else if("initFood".equals(todo)){

            // 默认查询 产品类型为1的列表
            FoodDao dao=new FoodDaoImpl();

            Integer  foodStyleId=1;

            List<Food> foodList = dao.search(foodStyleId, 0);

            request.setAttribute("foodList",foodList);

        }








    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.doPost(request,response);

    }
}
