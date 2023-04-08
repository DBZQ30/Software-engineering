package com.weideha.controller;



import com.weideha.pojo.admin;
import com.weideha.pojo.mes;
import com.weideha.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;
@Controller
public class AdminController {
    @Autowired
    private AdminService userService;

    @RequestMapping("/tologin")
    public String tmp() {
        return "login";
    }

    @RequestMapping("/loginchecking")
    @ResponseBody
    public Object login(String loginAct, String loginPwd, String isRemPwd, HttpSession httpSession, HttpServletResponse httpResponse) {
        mes tmp=new mes();
        Map<String, Object> map = new HashMap<>();
        map.put("loginAct", loginAct);
        map.put("loginPwd", loginPwd);
        admin user = userService.selectbyaccandpwd(map);
        if (user == null) {
            tmp.code = "0";
            tmp.mess = "登陆失败";
        }
        else{
            tmp.code="1";
            tmp.mess="登陆成功";
            httpSession.setAttribute("SessionUser",user);
            if ("true".equals(isRemPwd)){
                Cookie Act=new Cookie("loginAct",user.getUsername());
                Act.setMaxAge(10*24*60*60);
                httpResponse.addCookie(Act);
                Cookie Pwd=new Cookie("loginPwd",user.getPassword());
                Pwd.setMaxAge(10*24*60*60);
                httpResponse.addCookie(Pwd);
            }
            else {
                Cookie Act=new Cookie("loginAct",user.getUsername());
                Act.setMaxAge(0);
                httpResponse.addCookie(Act);
                Cookie Pwd=new Cookie("loginPwd",user.getPassword());
                Pwd.setMaxAge(0);
                httpResponse.addCookie(Pwd);
            }
        }
        return tmp;
    }


}
