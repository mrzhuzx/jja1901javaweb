package com.javaweb.tzhu.web;

import com.javaweb.tzhu.entity.Foodstyle;
import com.javaweb.tzhu.service.FoodService;
import com.javaweb.tzhu.service.FoodStyleService;
import com.javaweb.tzhu.service.impl.FoodServiceImpl;
import com.javaweb.tzhu.service.impl.FoodStyleServiceImpl;
import com.javaweb.tzhu.utils.PageModel;
import com.javaweb.tzhu.web.base.BaseServlet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@WebServlet(name = "FoodServlet",urlPatterns = "/FoodServlet")
public class FoodServlet extends BaseServlet {

    public String findFoodPageById(HttpServletRequest req, HttpServletResponse resp) throws Exception {
        //查询foodStyle（食品分类）
        FoodStyleService foodStyleService = new FoodStyleServiceImpl();
        List<Foodstyle> FSList = foodStyleService.findFoodStyle();
        req.setAttribute("FSList", FSList);

        int num=1;
        try {
            num = Integer.parseInt(req.getParameter("num"));
        }catch (Exception e){
        }
        int pageSize = 9;
        Integer foodStyleId = Integer.parseInt(req.getParameter("foodStyleId"));
        FoodService foodService = new FoodServiceImpl();
        PageModel pageModel = foodService.findPageByFood(foodStyleId,num,pageSize);
        req.setAttribute("page",pageModel);
        //return相当于转发，可参考BaseServlet
        return "/jsp/caidanyinpin.jsp";
    }
}
