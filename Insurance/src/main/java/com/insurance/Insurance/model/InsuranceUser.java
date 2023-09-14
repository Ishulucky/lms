package com.insurance.Insurance.model;

import java.util.Date;

public class InsuranceUser {
	private int userId;
	private String userName;
	private Date userCDate;
	private String userPwd;
	private String userType;
	private String userStatus;

	public InsuranceUser() {
		super();
	}

	public InsuranceUser(int userId, String userName, Date userCDate, String userPwd, String userType,
			String userStatus) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userCDate = userCDate;
		this.userPwd = userPwd;
		this.userType = userType;
		this.userStatus = userStatus;
	}

	@Override
	public String toString() {
		return "InsuranceUser [userId=" + userId + ", userName=" + userName + ", userCDate=" + userCDate + ", userPwd="
				+ userPwd + ", userType=" + userType + ", userStatus=" + userStatus + "]";
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Date getUserCDate() {
		return userCDate;
	}

	public void setUserCDate(Date userCDate) {
		this.userCDate = userCDate;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getUserStatus() {
		return userStatus;
	}

	public void setUserStatus(String userStatus) {
		this.userStatus = userStatus;
	}

}
