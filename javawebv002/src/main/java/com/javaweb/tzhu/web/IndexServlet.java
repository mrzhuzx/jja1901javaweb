package com.javaweb.tzhu.web;

import com.javaweb.tzhu.web.base.BaseServlet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "IndexServlet", urlPatterns = {"/IndexServlet"})
public class IndexServlet extends BaseServlet{

    public String execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
        return "/jsp/caidanyinpin.jsp";
    }

}
