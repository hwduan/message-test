package com.test.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.test.dao.LoginDAO;

public class LoginDAOImpl extends HibernateDaoSupport implements LoginDAO {
	
	public boolean userLogin(String username, String password){
		String hql = "from User u where u.userName='"+username+"' and u.userPassword='"+password+"'";
		List list = this.getHibernateTemplate().find(hql);
		if(list.isEmpty())
			return false;
		return true;
	}
	
	
	public boolean adminConfirm(String username){
		String hql="from User u where u.userName='"+username+"' and u.isAdmin='"+true+"'";
		List list=this.getHibernateTemplate().find(hql);
		if(list.isEmpty())
			return false;
		return true;
	}
}
