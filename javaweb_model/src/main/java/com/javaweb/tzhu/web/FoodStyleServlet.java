package com.javaweb.tzhu.web;

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

@WebServlet(name = "FoodStyleServlet",urlPatterns = "/fs")
public class FoodStyleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //业务动作的分支
        String  todo=request.getParameter("todo");
        if(todo!=null){

            /**
             * 加载产品分类
             */
            if("initFs".equals(todo)){
                FoodStyleDao dao=new FoodStyleDaoImpl();

                List<FoodStyle> foodStyleList = dao.search();
        //  单次请求域中的内容
                request.setAttribute("foodStyleList",foodStyleList);
                //不转发，也不重定向

            }

        }else{

            //500
        }



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.doPost(request,response);

    }
}
