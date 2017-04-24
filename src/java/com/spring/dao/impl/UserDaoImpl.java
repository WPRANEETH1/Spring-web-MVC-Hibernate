/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.dao.impl;

import com.spring.dao.UserDao;
import com.spring.model.Userdata;
import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Praneeth Madusanka
 */
@Repository("userDao")
public class UserDaoImpl implements UserDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addUser(Userdata user) {
        sessionFactory.getCurrentSession().save(user);
    }

    @Override
    public Userdata checkUseNamePassword(String userName, String passWord) {
        Criteria cr = sessionFactory.getCurrentSession().createCriteria(Userdata.class);
        Criterion usernam = Restrictions.eq("userName", userName);
        Criterion passw = Restrictions.eq("password", passWord);
        LogicalExpression andExp = Restrictions.and(usernam, passw);
        cr.add(andExp);
        Userdata result = (Userdata) cr.uniqueResult();
        return result;
    }

    @Override
    public long userCount() {
        Criteria cr = sessionFactory.getCurrentSession().createCriteria(Userdata.class);
        cr.add(Restrictions.eq("role.roleId", 2));
        cr.setProjection(Projections.rowCount());
        Long resultCount = (Long) cr.uniqueResult();
        return resultCount;
    }

    @Override
    public long expertCount() {
        Criteria cr = sessionFactory.getCurrentSession().createCriteria(Userdata.class);
        cr.add(Restrictions.eq("role.roleId", 3));
        cr.setProjection(Projections.rowCount());
        Long resultCount = (Long) cr.uniqueResult();
        return resultCount;
    }

    @Override
    public Userdata getDataByUserName(String userName) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Userdata getDataByUserName(int userId) {
        Criteria cr = sessionFactory.getCurrentSession().createCriteria(Userdata.class);
        cr.add(Restrictions.eq("userId", userId));
        Userdata result = (Userdata) cr.uniqueResult();
        return result;
    }

}
