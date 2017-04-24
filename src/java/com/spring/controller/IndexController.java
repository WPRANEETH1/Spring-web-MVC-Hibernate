/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.controller;

import com.spring.model.RegObject;
import com.spring.model.Userdata;
import com.spring.passwordgen.Passwordgenarter;
import com.spring.services.RoleServices;
import com.spring.services.UserServices;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Praneeth Madusanka
 */
@Controller
@RequestMapping("/")
public class IndexController {

    @Autowired
    public UserServices userServices;

    @Autowired
    public RoleServices roleServices;

    @RequestMapping(value = {"/login", "/"}, method = RequestMethod.GET)
    public String IdexPage(String msg, ModelMap map, Userdata user) {
        if (msg != null) {
            map.addAttribute("msg", msg);
        }
        map.addAttribute("logObj", user);
        return "login";
    }

    @RequestMapping(value = {"/login"}, method = RequestMethod.POST)
    public String LoadUsersPage(Userdata user, ModelMap map, HttpServletRequest request, HttpServletResponse response) {
        try {
            Userdata logdata = userServices.checkUseNamePassword(user.getUserName(), user.getPassword());
            HttpSession session = request.getSession();
            if (logdata != null && logdata.getRole().getName().equals("Users")) {
                session.setAttribute("username", logdata.getUserName());
                session.setAttribute("name", logdata.getFirstName() + " " + logdata.getLastName());
                session.setAttribute("userole", logdata.getRole().getName());
                return "redirect:" + "user_main";
            } else if (logdata != null && logdata.getRole().getName().equals("Admin")) {
                session.setAttribute("username", logdata.getUserName());
                session.setAttribute("name", logdata.getFirstName() + " " + logdata.getLastName());
                session.setAttribute("userole", logdata.getRole().getName());
                return "redirect:" + "admin_main?userid=" + logdata.getUserId();
            } else if (logdata != null && logdata.getRole().getName().equals("Experts")) {
                session.setAttribute("username", logdata.getUserName());
                session.setAttribute("name", logdata.getFirstName() + " " + logdata.getLastName());
                session.setAttribute("userole", logdata.getRole().getName());
                return "redirect:" + "exprt_main";
            } else {
                Userdata userNew = new Userdata();
                map.addAttribute("logObj", userNew);
                map.addAttribute("msg", "Login Error");
                return "login";
            }
        } catch (Exception e) {
            Userdata userNew = new Userdata();
            map.addAttribute("logObj", userNew);
            map.addAttribute("msg", "Login Error");
            return "login";
        }
    }

    @RequestMapping(value = {"/paint"}, method = RequestMethod.GET)
    public String paintPage() {
        return "paint";
    }

    @RequestMapping(value = {"/registration"}, method = RequestMethod.GET)
    public String registerPage(RegObject regObj, ModelMap map) {
        map.addAttribute("regObj", regObj);
        return "registration";
    }

    @RequestMapping(value = {"/registration"}, method = RequestMethod.POST)
    public String registerSavePage(RegObject regObj, ModelMap map) {
        RegObject regObjNew = new RegObject();
        Userdata user = new Userdata();
        map.addAttribute("regObj", regObjNew);
        String password = Passwordgenarter.getSaltString();
        try {
            user.setPassword(password);
            user.setRole(roleServices.getRoleByName(regObj.getSetuserrole()));
            user.setAllowEmailNotification(true);
            user.setFirstName(regObj.getFirstName());
            user.setLastName(regObj.getLastName());
            user.setUserName(regObj.getUserName());
            Date yourDate = new Date();
            user.setCreateDate(yourDate);
            userServices.addUser(user);
            map.addAttribute("msg", "Success Registration");
            return "redirect:" + "login";
        } catch (Exception e) {
            map.addAttribute("error", "Error Registration");
            return "registration";
        }
    }
}
