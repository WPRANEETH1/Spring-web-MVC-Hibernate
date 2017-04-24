/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.services;

import com.spring.model.Userdata;

/**
 *
 * @author Praneeth Madusanka
 */
public interface UserServices {

    public void addUser(Userdata user);

    public Userdata checkUseNamePassword(String userName, String passWord);

    public long userCount();

    public long expertCount();

    public Userdata getDataByUserName(String userName);

    public Userdata getDataByUserName(int userId);
}
