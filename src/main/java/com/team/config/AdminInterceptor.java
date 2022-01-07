package com.team.config;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Data 2022-01-03 13:28
 *
 * @author Liu_Yan
 */
public class AdminInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        if (session.getAttribute("adminInfo") != null) {
            return true;
        }
        if (request.getRequestURI().contains("index") || request.getRequestURI().contains("login")) {
            return true;
        }

        System.out.println("有人尝试在管理员页面为非作歹！");
        response.sendRedirect("/admin/login");
        return false;
    }
}
