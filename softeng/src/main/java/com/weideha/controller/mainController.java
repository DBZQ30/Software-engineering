package com.weideha.controller;


import com.weideha.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class mainController {
    @Autowired
    AdminService userService;
    @RequestMapping("/workbench/index")
    public String m(){
        return "workbench/index";
    }

}
