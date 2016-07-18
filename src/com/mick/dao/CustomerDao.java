package com.mick.dao;

import com.mick.entity.Customer;
import com.mick.entity.Page;

public interface CustomerDao extends DataDao<Customer> {
	Page pageQuerySearch(Page page, Customer customer);
}
