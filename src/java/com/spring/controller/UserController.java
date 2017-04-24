/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.controller;

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
public class UserController {

    @RequestMapping(value = {"/user_main"}, method = RequestMethod.GET)
    public String UserMainPage(String msg, ModelMap map) {
        return "user_main";
    }
}
