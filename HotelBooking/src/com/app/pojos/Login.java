package com.app.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="hotel_Login")
public class Login {
	@Override
	public String toString() {
		return "Login [loginId=" + loginId + ", emailId=" + emailId + ", userId=" + userId + ", password=" + password
				+ ", role=" + role + "]";
	}

	private Integer loginId;
	@NotEmpty(message="required*")
	private String emailId;
	private int userId;
	@NotEmpty(message="required*")
	private String password;
	@NotEmpty(message="required*")
	private String role;
	
	public Login() {
		// TODO Auto-generated constructor stub
	}
	public Login(String emailId, String password, String role) {
		super();
		this.emailId = emailId;
		this.password = password;
		this.role = role;
	}

	@Id
	@GeneratedValue
	public Integer getLoginId() {
		return loginId;
	}

	public void setLoginId(Integer loginId) {
		this.loginId = loginId;
	}
	@Column(unique=true,nullable=false)
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	@Column(unique=true)
	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	
	

}
