/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.dao.impl;

import com.spring.dao.RoleDao;
import com.spring.model.Role;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Praneeth Madusanka
 */
@Repository("roleDao")
public class RoleDaoImpl implements RoleDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public Role getRoleByName(String userType) {
        Criteria cr = sessionFactory.getCurrentSession().createCriteria(Role.class);
        cr.add(Restrictions.eq("name", userType));
        Role result = (Role) cr.uniqueResult();
        return result;
    }

}
