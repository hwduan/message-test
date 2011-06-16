package com.test.service;

public interface LoginManager {

	public abstract boolean userLogin(String username, String password);

	public abstract boolean adminConfirm(String username);

}