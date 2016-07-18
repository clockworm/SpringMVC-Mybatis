package com.mick.entity;

import java.io.Serializable;
import org.springframework.stereotype.Component;

@Component
public class Evaluate implements Serializable {
	private static final long serialVersionUID = 1L;
	private String id;
	private String employee_id;
	private String customer_id;
	private String desc;// 评价内容

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getEmployee_id() {
		return employee_id;
	}

	public void setEmployee_id(String employee_id) {
		this.employee_id = employee_id;
	}

	public String getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

}
