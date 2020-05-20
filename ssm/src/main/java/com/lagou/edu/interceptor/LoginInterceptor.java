package com.lagou.edu.interceptor;

import org.springframework.util.StringUtils;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse
            response, Object handler) throws Exception {
        System.out.println("LoginInterceptor preHandle......");
        if(request.getRequestURI().contains("/login")){
            return true;
        }
        String username = (String)request.getSession().getAttribute("username");
        if(StringUtils.isEmpty(username)){
            response.sendRedirect(request.getContextPath()+"/login.jsp");
            return false;
        }
        return true;
    }
}
