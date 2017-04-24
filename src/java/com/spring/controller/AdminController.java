package com.spring.controller;

import com.spring.model.Userdata;
import com.spring.services.UserServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class AdminController {

    @Autowired
    public UserServices userServices;

    @RequestMapping(value = {"/admin_main"}, method = RequestMethod.GET)
    public String AdminMainPage(int userid, ModelMap map) {
        Long usrcount = userServices.userCount();
        Long expcount = userServices.expertCount();
        Userdata useData = userServices.getDataByUserName(userid);
        map.addAttribute("useData", useData);
        map.addAttribute("usrcount", usrcount);
        map.addAttribute("expcount", expcount);
        return "admin_main";
    }
}
