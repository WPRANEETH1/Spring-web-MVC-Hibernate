/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.services.impl;

import com.spring.dao.UserDao;
import com.spring.model.Userdata;
import com.spring.services.UserServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Praneeth Madusanka
 */
@Service("userServices")
public class UserServicesImpl implements UserServices {

    @Autowired
    public UserDao userDao;

    @Transactional
    @Override
    public void addUser(Userdata user) {
        userDao.addUser(user);
    }

    @Transactional
    @Override
    public Userdata checkUseNamePassword(String userName, String passWord) {
        return userDao.checkUseNamePassword(userName, passWord);
    }

    @Transactional
    @Override
    public long userCount() {
        return userDao.userCount();
    }

    @Transactional
    @Override
    public long expertCount() {
        return userDao.expertCount();
    }

    @Transactional
    @Override
    public Userdata getDataByUserName(String userName) {
        return userDao.getDataByUserName(userName);
    }

    @Transactional
    @Override
    public Userdata getDataByUserName(int userId) {
        return userDao.getDataByUserName(userId);
    }

}
