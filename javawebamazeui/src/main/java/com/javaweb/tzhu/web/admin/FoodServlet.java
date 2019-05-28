package com.javaweb.tzhu.web.admin;

import com.javaweb.tzhu.appcomm.BeansUtil;
import com.javaweb.tzhu.dao.FoodDao;
import com.javaweb.tzhu.dao.FoodStyleDao;
import com.javaweb.tzhu.dao.impl.FoodDaoSpringJDBCImpl;
import com.javaweb.tzhu.dao.impl.FoodStyleDaoImpl;
import com.javaweb.tzhu.entity.Food;
import com.javaweb.tzhu.entity.FoodStyle;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet(urlPatterns = "/food")
public class FoodServlet extends HttpServlet {

    FoodDao foodDao = BeansUtil.getBean("foodDao", FoodDaoSpringJDBCImpl.class);
    //FoodStyleDao  foodStyleDao=BeansUtil.getBean("",FoodStyleDaoImpl.class);// springjdbc
    FoodStyleDao  foodStyleDao=new FoodStyleDaoImpl(); // JDBC封装类

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        this.doPost(req, resp); //

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        String todo = req.getParameter("todo");

        /**
         * 初始化查询分页列表
         */
        if ("searchByPage".equals(todo)) {

            String pageNumStr=req.getParameter("pageNum");
            String foodStyleIdStr=req.getParameter("foodStyleId");


            Integer foodStyleId=0;
            Integer lunchId=0;
            Integer pageNum=1;
            Integer pageSize=6;//分页　项目配置常量配置

            if(pageNumStr!=null){

                pageNum=Integer.valueOf(pageNumStr);
            }
            if(foodStyleIdStr!=null){
                foodStyleId=Integer.valueOf(foodStyleIdStr);
            }
            Integer count = foodDao.count(foodStyleId);//分类下的产品总数量
            Integer pageNumAll=count%pageSize==0?count/pageSize:count%pageSize+1;//总的分页数
            if(pageNum>=0){
                pageNum=1;
            }
            if(pageNum>=pageNumAll){
                pageNum=pageNumAll;
            }


            List<Food> foodList = foodDao.search(foodStyleId, lunchId, pageNum, pageSize);

            List<FoodStyle> foodStyleList = foodStyleDao.search();

            req.setAttribute("foodList", foodList); //产品列表
            req.setAttribute("foodStyleList",foodStyleList);// 产品分类列
            req.setAttribute("foodStyleId",foodStyleId);// 正在查询的产品类型
            req.setAttribute("pageNumAll",pageNumAll);//总的分页数
            req.setAttribute("pageNum",pageNum);//当前页面
            req.getRequestDispatcher("food.jsp").forward(req, resp);


        }
    }
}
