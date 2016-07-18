package com.mick.entity;

import java.io.Serializable;
import java.util.Date;
import org.springframework.stereotype.Component;

@Component
public class Follow implements Serializable {

	private static final long serialVersionUID = 1L;
	private String id;
	private Customer customer;
	private String state;
	private String message;
	private String note;
	private Date createDate;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	@Override
	public String toString() {
		return "Follow [id=" + id + ", customer=" + customer + ", state=" + state + ", message=" + message + ", note="
				+ note + ", createDate=" + createDate + "]";
	}
}
