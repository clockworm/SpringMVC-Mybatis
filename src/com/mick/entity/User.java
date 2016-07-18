package com.mick.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import org.springframework.stereotype.Component;

@Component
public class User implements Serializable {
	private static final long serialVersionUID = 1L;

	private String id;
	private int code;
	private String username;
	private String password;
	private String phone;
	private String email;
	private Date createTime;
	private String autologinAuthKey;
	private int status;
	private String validateCode;
	private List<Role> roles;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getCode() {
		return code;
	}

	public String getValidateCode() {
		return validateCode;
	}

	public void setValidateCode(String validateCode) {
		this.validateCode = validateCode;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getAutologinAuthKey() {
		return autologinAuthKey;
	}

	public void setAutologinAuthKey(String autologinAuthKey) {
		this.autologinAuthKey = autologinAuthKey;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", email=" + email
				+ ", createTime=" + createTime + "]";
	}

}
