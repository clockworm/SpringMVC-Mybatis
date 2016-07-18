package com.mick.entity;

import java.util.List;
import org.springframework.stereotype.Component;

@Component
public class Page {

	private int startPageIndex;
	private int currentPage;
	private int totalPage; // 总页数
	private int recordCount; // 总条数
	private List<?> recodeList; // 这一页要显示的数据
	private int pageSize; // 显示条数
	private String sort; // 是否倒序
	private int count;//总条数

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getStartPageIndex() {
		return startPageIndex;
	}

	public void setStartPageIndex(int startPageIndex) {
		this.startPageIndex = startPageIndex;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getRecordCount() {
		return recordCount;
	}

	public void setRecordCount(int recordCount) {
		this.recordCount = recordCount;
	}

	public List<?> getRecodeList() {
		return recodeList;
	}

	public void setRecodeList(List<?> recodeList) {
		this.recodeList = recodeList;
	}
	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}
}
