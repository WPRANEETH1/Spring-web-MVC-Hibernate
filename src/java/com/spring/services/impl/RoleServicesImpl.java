/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.services.impl;

import com.spring.dao.RoleDao;
import com.spring.model.Role;
import com.spring.services.RoleServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Praneeth Madusanka
 */
@Service("roleServices")
public class RoleServicesImpl implements RoleServices {

    @Autowired
    public RoleDao roleDao;

    @Transactional
    @Override
    public Role getRoleByName(String userType) {
        return roleDao.getRoleByName(userType);
    }

}
