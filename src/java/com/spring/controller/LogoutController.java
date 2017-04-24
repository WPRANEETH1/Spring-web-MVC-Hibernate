package com.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class LogoutController {

    @RequestMapping(value = {"/logout"}, method = RequestMethod.GET)
    public String logout(ModelMap map, HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        session.setAttribute("username", null);
        session.setAttribute("name", null);
        session.setAttribute("userole", null);
        return "redirect:" + "login";
    }
}
