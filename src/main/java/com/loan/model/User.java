package com.loan.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ish_users")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_id")
	private Long userId;

	@Column(name = "user_uname", unique = true, nullable = false, length = 20)
	private String username;

	@Column(name = "user_cdate")
	private Date creationDate;

	@Column(name = "user_type", nullable = false, length = 4)
	private String userType;

	@Column(name = "user_pwd", nullable = false, length = 50)
	private String password;

	@Column(name = "user_email", length = 60)
	private String userEmail;

	@Column(name = "user_recoveryemail", length = 60)
	private String userRecoveryEmail;

	@Column(name = "user_mobile", nullable = false)
	private Long userMobile;

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Date getCreationDate() {
		return creationDate;
	}

	public void setCreationDate(String creationDate) {
		this.creationDate = Date.valueOf(creationDate);
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserRecoveryEmail() {
		return userRecoveryEmail;
	}

	public void setUserRecoveryEmail(String userRecoveryEmail) {
		this.userRecoveryEmail = userRecoveryEmail;
	}

	public Long getUserMobile() {
		return userMobile;
	}

	public void setUserMobile(Long userMobile) {
		this.userMobile = userMobile;
	}

	public User(Long userId, String username, Date creationDate, String userType, String password, String userEmail,
			String userRecoveryEmail, Long userMobile) {
		super();
		this.userId = userId;
		this.username = username;
		this.creationDate = creationDate;
		this.userType = userType;
		this.password = password;
		this.userEmail = userEmail;
		this.userRecoveryEmail = userRecoveryEmail;
		this.userMobile = userMobile;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", username=" + username + ", creationDate=" + creationDate + ", userType="
				+ userType + ", password=" + password + ", userEmail=" + userEmail + ", userRecoveryEmail="
				+ userRecoveryEmail + ", userMobile=" + userMobile + "]";
	}

	public User() {
		super();
	}

}