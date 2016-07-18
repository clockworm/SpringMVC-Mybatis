package com.mick.service;

import com.mick.entity.Customer;
import com.mick.entity.Page;

public interface CustomerService {
	// 分页查询
	Page pageQuery(Page page);

	// 新增客户
	int add(Customer customer);

	// 查询ID客户
	Customer getCustomer(String id);

	// 修改客户信息
	int update(Customer customer);

	// 条件搜索
	Page pageQuerySearch(Page page, Customer customer);
}
