package com.javaweb.tzhu.web.filter;

import com.javaweb.tzhu.web.vo.AdminVo;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 权限过滤器
 *     作用：过滤后面的资源只能是有权限的用户可以访问
 *
 */
@WebFilter(filterName = "adminFilter",urlPatterns = {"/*"})
public class AdminFilter  implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("  进入权限过滤器~~~~~~~~~~~~~~~~~~ ");
        //获得servlet API
        HttpServletRequest req= (HttpServletRequest) servletRequest;
        HttpServletResponse resp= (HttpServletResponse) servletResponse;
        //得到包含工程名的当前页面全路径
       // System.out.println(req.getRequestURI());//   login.jsp?xxx0123   login.html
        String url=req.getRequestURI();
        System.out.println("URL:"+url);
        String login="login";
        //白名单：（不过滤的内容页面）


          int  findStr=url.lastIndexOf(".jsp");


        if(findStr<=0){
            filterChain.doFilter(servletRequest,servletResponse);
        }else if(findStr>0){
              int  begin=url.lastIndexOf(".jsp") - login.length();
              int end=url.lastIndexOf(".jsp");
              String newString=url.substring(begin,end);
              if(login.equals(newString)){//login.jsp
                  filterChain.doFilter(servletRequest,servletResponse);
              }else  {
                  System.out.println("  执行  权限过滤器！！！！！！！！！！！！！！ ");
                  //进行权限过滤
                  AdminVo adminVo = (AdminVo) req.getSession().getAttribute("adminVo");
                  if(adminVo!=null ){
                      filterChain.doFilter(servletRequest,servletResponse);
                  }else if(adminVo==null){
                      //管理员没有登录
                      req.getSession().setAttribute("errMs","请登录后再访问！");
                      resp.sendRedirect(req.getContextPath()+"/login.jsp");
                  }


              }
        }







    }

    @Override
    public void destroy() {

    }
}
