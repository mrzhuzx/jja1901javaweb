package com.javaweb.tzhu.web.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 文本过滤器
 * 作用： 过滤页面上的文本，处理中文字符串（从页面到后台, 从后台传内容到网页时）
 */
@WebFilter(filterName = "encodingFilter",urlPatterns = "/*") //  /*过滤全部的资源
public class EncodingFilter implements Filter {


    /**
     * 过滤初始化
      * @param filterConfig
     * @throws ServletException
     */
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    /**
     * 过滤方法
     * @param servletRequest
     * @param servletResponse
     * @param filterChain
     * @throws IOException
     * @throws ServletException
     */
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("  EncodingFilter  文本过滤器执行~~~~~~~~~~~~~~~~~~~~~~~~");
        //获得servlet API
        HttpServletRequest req= (HttpServletRequest) servletRequest;
        HttpServletResponse resp= (HttpServletResponse) servletResponse;
        // 过滤页面上的文本，处理中文字符串（从页面到后台, 从后台传内容到网页时）
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");

        //工程路径
       // System.out.println(req.getContextPath());
        //获取Web项目的绝对全路径
      //  String strDirPath = req.getSession().getServletContext().getRealPath("/");
      //  System.out.println(strDirPath);
        //得到包含工程名的当前页面全路径
        System.out.println(req.getRequestURI());

        filterChain.doFilter(servletRequest,servletResponse);//放行 出口


    }


    /**
     * 回收
     */
    @Override
    public void destroy() {

    }
}
