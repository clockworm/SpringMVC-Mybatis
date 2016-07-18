package com.mick.entity;

import java.io.Serializable;
import java.util.Date;
import org.springframework.stereotype.Component;

@Component
public class Employee implements Serializable {

	private static final long serialVersionUID = 1L;
	private String id;
	private String employeeCode;
	private String employeeName;
	private String employeeAddress;
	private String employeePhone;
	private String employeeEmail;
	private String employeeSex;
	private String employeeSchool;
	private String employeeAge;
	private String employeeCard;
	private String employeeEducatio;
	private String employeePosition;
	private Date createDate;
	private User user;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getEmployeeName() {
		return employeeName;
	}

	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getEmployeeAddress() {
		return employeeAddress;
	}

	public void setEmployeeAddress(String employeeAddress) {
		this.employeeAddress = employeeAddress;
	}

	public String getEmployeePhone() {
		return employeePhone;
	}

	public void setEmployeePhone(String employeePhone) {
		this.employeePhone = employeePhone;
	}

	public String getEmployeeEmail() {
		return employeeEmail;
	}

	public void setEmployeeEmail(String employeeEmail) {
		this.employeeEmail = employeeEmail;
	}

	public String getEmployeeSex() {
		return employeeSex;
	}

	public void setEmployeeSex(String employeeSex) {
		this.employeeSex = employeeSex;
	}

	public String getEmployeeSchool() {
		return employeeSchool;
	}

	public void setEmployeeSchool(String employeeSchool) {
		this.employeeSchool = employeeSchool;
	}

	public String getEmployeeAge() {
		return employeeAge;
	}

	public void setEmployeeAge(String employeeAge) {
		this.employeeAge = employeeAge;
	}

	public String getEmployeeCard() {
		return employeeCard;
	}

	public void setEmployeeCard(String employeeCard) {
		this.employeeCard = employeeCard;
	}

	public String getEmployeeCode() {
		return employeeCode;
	}

	public void setEmployeeCode(String employeeCode) {
		this.employeeCode = employeeCode;
	}

	public String getEmployeeEducatio() {
		return employeeEducatio;
	}

	public void setEmployeeEducatio(String employeeEducatio) {
		this.employeeEducatio = employeeEducatio;
	}

	public String getEmployeePosition() {
		return employeePosition;
	}

	public void setEmployeePosition(String employeePosition) {
		this.employeePosition = employeePosition;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	@Override
	public String toString() {
		return "Employee [employeeName=" + employeeName + ", employeeSex=" + employeeSex + ", employeeAge="
				+ employeeAge + "]";
	}
}
