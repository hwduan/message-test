package com.test.dao;

public interface LoginDAO {

	public abstract boolean userLogin(String username, String password);

	public abstract boolean adminConfirm(String username);

	

}