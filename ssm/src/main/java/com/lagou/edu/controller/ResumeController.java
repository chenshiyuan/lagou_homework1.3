package com.lagou.edu.controller;

import com.lagou.edu.pojo.Resume;
import com.lagou.edu.service.ResumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/resume")
public class ResumeController {

    /**
     * Spring容器和SpringMVC容器是有层次的（父子容器）
     * Spring容器：service对象+dao对象
     * SpringMVC容器：controller对象，，，，可以引用到Spring容器中的对象
     */


    @Autowired
    private ResumeService resumeService;

    @RequestMapping("/list")
    public String queryAll(HttpServletRequest request, HttpServletResponse
            response) throws Exception {
        request.setAttribute("resumes",resumeService.queryResumeList());
        return "list";
    }

    @RequestMapping("/delete")
    public String queryAll(HttpServletRequest request, HttpServletResponse
            response,Integer id) throws Exception {
        resumeService.deleteByID(id);
        request.setAttribute("resumes",resumeService.queryResumeList());
        return "list";
    }


    @RequestMapping("/save")
    public String save(HttpServletRequest request, HttpServletResponse
            response,Resume resume) throws Exception {
        resumeService.update(resume);
        request.setAttribute("resumes",resumeService.queryResumeList());
        return "list";
    }

}
