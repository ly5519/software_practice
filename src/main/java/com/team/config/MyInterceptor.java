package com.team.config;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Data 2022-01-03 12:08
 *
 * @author Liu_Yan
 */
public class MyInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        if (session.getAttribute("userInfo") != null) {
            return true;
        }
        if (request.getRequestURI().contains("login") || request.getRequestURI().contains("verify")) {
            return true;
        }
        System.out.println("发现非法请求拦截，正在重定向到登录页面");
        response.sendRedirect("/student/login");
        return false;
    }
}
