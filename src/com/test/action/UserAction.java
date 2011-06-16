package com.test.action;

import java.util.Iterator;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionSupport;
import com.test.bean.User;
import com.test.service.UserService;

public class UserAction extends ActionSupport
{   
	/**
	 * Spring注入的Service接口
	 */
	private User user;
	private UserService service;
	
	private String userPassword;
	private String userName;
	private String userEmail;
	private String userQq;
	private String userImage;
	private String userPhone;
	public User getUser()
	{
		return user;
	}

	public void setUser(User user)
	{
		this.user = user;
	}

	public UserService getService()
	{
		return service;
	}

	public void setService(UserService service)
	{
		this.service = service;
	}

	public String addUser()	{
		this.user = new User();
		this.user.setUserEmail(userEmail);
		this.user.setUserImage(userImage);
		this.user.setUserQq(userQq);
		this.user.setUserName(userName);
		this.user.setUserPassword(userPassword);
		this.user.setUserPhone(userPhone);
	
		this.service.save(this.user);

		return SUCCESS;
	}
	public String deleteUser() {
		this.service.delete(user);
		
		return SUCCESS;
	}
	public String updateUser() {
		
		
		this.service.update(user);
		
		return SUCCESS;
	}
	public String getAllUser() {
		Map request = (Map) ActionContext.getContext().get("request");

		request.put("list", service.findAll());

		return SUCCESS;
	}
	public String getUserByID() {
		user = this.service.findById(user.getUserId());
		
		return SUCCESS;
	}
	@Override
	@SuppressWarnings("unchecked")
	public void validate()
	{
		Map map = this.getFieldErrors();
		Set set = map.keySet();

		for (Iterator iter = set.iterator(); iter.hasNext();)
		{
			System.out.println(map.get(iter.next()));
		}
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserQq() {
		return userQq;
	}

	public void setUserQq(String userQq) {
		this.userQq = userQq;
	}

	public String getUserImage() {
		return userImage;
	}

	public void setUserImage(String userImage) {
		this.userImage = userImage;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
}
