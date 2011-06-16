package com.test.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.test.service.LoginManager;


public class LoginAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private LoginManager loginManager;
	

	private String userName;
	private String userPassword;
	

	
	public String userLogin() {
		//Map<String, Object> session = ActionContext.getContext().getSession();
		
		if (loginManager.userLogin(userName, userPassword)) {
				if(loginManager.adminConfirm(userName))
					return "AdminLogin";
				else
					return "Login";
		}
	
		return ERROR;
	}



	public LoginManager getLoginManager() {
		return loginManager;
	}



	public void setLoginManager(LoginManager loginManager) {
		this.loginManager = loginManager;
	}



	public String getUserName() {
		return userName;
	}



	public void setUserName(String userName) {
		this.userName = userName;
	}



	public String getUserPassword() {
		return userPassword;
	}



	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}



	public static long getSerialVersionUID() {
		return serialVersionUID;
	}
}
