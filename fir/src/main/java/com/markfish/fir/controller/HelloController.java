package com.markfish.fir.controller;

import com.markfish.fir.aop.Log;
import com.markfish.fir.model.Student;
import com.markfish.fir.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @Autowired
    private StudentService studentService;

    @Log("index访问")
    @RequestMapping("/")
    String index() {
        return "hello spring boot";
    }

    @Log("hello访问")
    @RequestMapping("/hello")
    String indexx() {
        return "hello body";
    }

    @Log("访问fix")
    @RequestMapping("/fix")
    String indexxx() {
        return "fix something";
    }

    @Log("查询student")
    @RequestMapping("/students")
    public Student queryStudentBySno(String sno) {
        return this.studentService.queryStudentBySno(sno);
    }
}
