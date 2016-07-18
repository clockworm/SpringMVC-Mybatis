package com.mick.dao.imp;

import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import com.mick.dao.CustomerDao;
import com.mick.dao.EmployeeDao;
import com.mick.entity.Customer;
import com.mick.entity.Employee;
import com.mick.entity.Page;

@Repository
public class CustomerDaoIMP implements CustomerDao {
	@Resource
	private SqlSessionFactory sqlSessionFactory;
	@Resource
	private EmployeeDao employeeDao;

	@Override
	public int add(Customer customer) {
		SqlSession session = sqlSessionFactory.openSession();
		customer.setId(UUID.randomUUID().toString());
		customer.setCreateDate(new Date());
		return session.insert("Customer.add", customer);
	}

	@Override
	public int delete(Serializable id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Customer customer) {
		SqlSession session = sqlSessionFactory.openSession();
		return session.update("Customer.update", customer);
	}

	@Override
	public Customer find(Serializable id) {
		SqlSession session = sqlSessionFactory.openSession();
		Customer customer = session.selectOne("Customer.find", id);
		if (customer != null && customer.getEmployee() != null) {
			Employee employee = employeeDao.find(customer.getEmployee().getId());
			customer.setEmployee(employee);
		}
		return customer;
	}

	@Override
	public List<Customer> Query() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Customer> findMore(Customer customer) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Page pageQuery(Page page) {
		int startPage = (page.getCurrentPage() - 1) * page.getPageSize();
		page.setStartPageIndex(startPage);
		SqlSession session = sqlSessionFactory.openSession();
		List<Customer> customers = session.selectList("Customer.pageQuery", page);
		for (Customer customer : customers) {
			if (customer != null && customer.getEmployee() != null) {
				Employee employee = employeeDao.find(customer.getEmployee().getId());
				customer.setEmployee(employee);
			}
		}
		int count = getRows();
		int totalPage = (count + page.getPageSize() - 1) / page.getPageSize();
		page.setTotalPage(totalPage);
		page.setRecodeList(customers);
		page.setCount(count);
		return page;
	}

	@Override
	public Page pageQuerySearch(Page page, Customer customer) {
		int startPage = (page.getCurrentPage() - 1) * page.getPageSize();
		page.setStartPageIndex(startPage);
		SqlSession session = sqlSessionFactory.openSession();
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("name", customer.getName());
		map.put("page", page);
		List<Customer> customers = session.selectList("Customer.pageQuerySearch", map);
		for (Customer customer2 : customers) {
			if (customer2 != null && customer2.getEmployee() != null) {
				Employee employee = employeeDao.find(customer2.getEmployee().getId());
				customer2.setEmployee(employee);
			}
		}
		int count = getRows(customer.getName());
		int totalPage = (count + page.getPageSize() - 1) / page.getPageSize();
		page.setTotalPage(totalPage);
		page.setRecodeList(customers);
		return page;
	}

	@Override
	public int getRows() {
		SqlSession session = sqlSessionFactory.openSession();
		return session.selectOne("Customer.getRows");
	}

	public int getRows(Object... objects) {
		SqlSession session = sqlSessionFactory.openSession();
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("name", objects[0]);
		return session.selectOne("Customer.getRowSearch", map);
	}

}
