package com.mick.entity;

import java.io.Serializable;
import java.util.Date;
import org.springframework.stereotype.Component;

@Component
public class Customer implements Serializable {

	private static final long serialVersionUID = 1L;
	private String id;
	private String name;
	private String source; // 客户来源
	private int capital;// 客户注册资本
	private String phone; // 客户电话
	private String address;// 客户地址
	private String state;// 客户状态
	private String type;// 客户类型
	private Date createDate; // 注册时间
	private String nature; //客户公司性质
	private String  unitName;//单位名称
	private Employee employee;//跟进人

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNature() {
		return nature;
	}
	public String getUnitName() {
		return unitName;
	}

	public void setUnitName(String unitName) {
		this.unitName = unitName;
	}

	public void setNature(String nature) {
		this.nature = nature;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSource() {
		return source;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public int getCapital() {
		return capital;
	}

	public void setCapital(int capital) {
		this.capital = capital;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	
	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
}
