package com.mick.entity;

import java.io.Serializable;
import java.util.Date;
import org.springframework.stereotype.Component;

@Component
public class Role implements Serializable {

	private static final long serialVersionUID = 1L;
	private String id;
	private int code;
	private String name;
	private String desc;
	private Date createTime;
	private int mark;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public int getMark() {
		return mark;
	}

	public void setMark(int mark) {
		this.mark = mark;
	}

	@Override
	public String toString() {
		return "Role [name=" + name + ", desc=" + desc + "'" + createTime + "'";
	}

}
