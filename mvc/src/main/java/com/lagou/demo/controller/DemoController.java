package com.lagou.demo.controller;

import com.lagou.demo.service.IDemoService;
import com.lagou.edu.mvcframework.annotations.LagouAutowired;
import com.lagou.edu.mvcframework.annotations.LagouController;
import com.lagou.edu.mvcframework.annotations.LagouRequestMapping;
import com.lagou.edu.mvcframework.annotations.Security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@LagouController
@LagouRequestMapping("/demo")
@Security({"admin"})
public class DemoController {


    @LagouAutowired
    private IDemoService demoService;


    /**
     * URL: /demo/query?name=lisi
     * @param request
     * @param response
     * @param name
     * @return
     */
    @Security({"read","zhangsan"})
    @LagouRequestMapping("/read")
    public String read(HttpServletRequest request, HttpServletResponse response,String name) {
        try {
            response.getWriter().write("<html>\n" +
                    "<body>\n" +
                    "<h2>Hello!"+name+"</h2>\n" +
                    "</body>\n" +
                    "</html>");
        } catch (IOException e) {
            e.printStackTrace();
        }
        return demoService.get(name);
    }

    @Security({"write"})
    @LagouRequestMapping("/write")
    public String write(HttpServletRequest request, HttpServletResponse response,String name) {
        try {
            response.getWriter().write("<html>\n" +
                    "<body>\n" +
                    "<h2>Hello!"+name+"</h2>\n" +
                    "</body>\n" +
                    "</html>");
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "write";
    }
}
