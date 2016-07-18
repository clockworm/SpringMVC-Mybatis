package com.mick.service.imp;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.mick.dao.CustomerDao;
import com.mick.entity.Customer;
import com.mick.entity.Page;
import com.mick.service.CustomerService;

@Service
public class CustomerServiceIMP implements CustomerService {
	@Resource
	private CustomerDao customerDao;

	@Override
	public Page pageQuery(Page page) {
		return customerDao.pageQuery(page);
	}

	@Override
	public int add(Customer customer) {
		return customerDao.add(customer);
	}

	@Override
	public Customer getCustomer(String id) {
		return customerDao.find(id);
	}

	@Override
	public int update(Customer customer) {
		return customerDao.update(customer);
	}

	@Override
	public Page pageQuerySearch(Page page, Customer customer) {
		return customerDao.pageQuerySearch(page, customer);
	}

}
