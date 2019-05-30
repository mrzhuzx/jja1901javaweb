package com.javaweb.tzhu.web;


import com.javaweb.tzhu.appcomm.BeansUtil;
import com.javaweb.tzhu.dao.CartDao;
import com.javaweb.tzhu.dto.CartFoodVo;
import com.javaweb.tzhu.entity.Cart;
import com.javaweb.tzhu.web.vo.CustomerVo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * 购物车控制层代码
 */
@WebServlet(name = "cartServlet",urlPatterns = "/cart")
public class CartServlet extends HttpServlet {

    CartDao cartDao= BeansUtil.getBean("cartDao",CartDao.class);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        this.doPost(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        String op=req.getParameter("op");
        if(op!=null){

            if("save".equals(op)){
                CustomerVo cus= (CustomerVo) req.getSession().getAttribute("cus");
                if(cus==null){
                    resp.sendRedirect(req.getContextPath()+"jsp/mlslogin.jsp");
                }else if(cus!=null){
                    Cart cart=new Cart();
                    String  foodidStr=req.getParameter("foodid");

                    cart.setUserid(cus.getCustomerid());
                    cart.setFoodid(Integer.valueOf(foodidStr));
                    cart.setFoodcount(1);
                    cartDao.add(cart);
                    //设置服务器端使用的编码,同时设置了客户端使用的编码
                    resp.setContentType("text/html;charset=utf-8");//MIME
                    PrintWriter out = resp.getWriter();//得到向客户端发送数据的字符输出流
                    out.print("    <script type=\"text/javascript\">alert(\"添加成功！\") </script>");

                }


            }else if("searchMyCart".equals(op)){
                CustomerVo cus= (CustomerVo) req.getSession().getAttribute("cus");
                if(cus==null) {
                    resp.sendRedirect(req.getContextPath() + "jsp/mlslogin.jsp");
                }else{
                    List<CartFoodVo> cartList = cartDao.search(cus.getCustomerid());
                    req.setAttribute("cartList",cartList);

                }

            }



        }else{

            System.out.println("无效的业务动作");
        }



    }
}
