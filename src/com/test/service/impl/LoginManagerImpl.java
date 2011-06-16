package com.test.service.impl;

import com.test.dao.LoginDAO;
import com.test.service.LoginManager;

public class LoginManagerImpl implements LoginManager {
	private LoginDAO loginDAO;

	public LoginDAO getLoginDAO() {
		return loginDAO;
	}

	public void setLoginDAO(LoginDAO loginDAO) {
		this.loginDAO = loginDAO;
	}


	public boolean userLogin(String username, String password) {
		return loginDAO.userLogin(username, password);
	}

	
	public boolean adminConfirm(String username) {
		return loginDAO.adminConfirm(username);
	}

	
}
