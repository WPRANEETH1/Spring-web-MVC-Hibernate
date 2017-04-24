/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.dao;

import com.spring.model.Role;

/**
 *
 * @author Praneeth Madusanka
 */
public interface RoleDao {

    public Role getRoleByName(String userType);
}
