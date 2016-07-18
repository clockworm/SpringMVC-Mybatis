package com.mick.service.imp;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.mick.dao.EmployeeDao;
import com.mick.entity.Employee;
import com.mick.entity.Page;
import com.mick.service.EmployeeService;

@Service
public class EmployeeServiceIMP implements EmployeeService {
	@Resource
	private EmployeeDao employeeDao;

	@Override
	public int update(Employee employee) {
		return employeeDao.update(employee);
	}

	@Override
	public int insert(Employee employee) {
		return employeeDao.add(employee);
	}

	@Override
	public List<Employee> query() {
		return employeeDao.Query();
	}

	@Override
	public List<Employee> queryReverse() {
		return employeeDao.QueryReverse();
	}

	@Override
	public Page pageQuery(Page page) {
		return employeeDao.pageQuery(page);
	}

	@Override
	public Employee getEmployee(String id) {
		return employeeDao.find(id);
	}

	@Override
	public Page pageQuerySearch(Page page, Object... objects) {
		return employeeDao.pageQuerySearch(page, objects);
	}

	@Override
	public boolean isbingUser(String userid) {
		return employeeDao.isbingUser(userid);
	}

	@Override
	public Employee findEmployee(String employeeName) {
		Employee emp = new Employee();
		emp.setEmployeeName(employeeName);
		if (employeeDao.findMore(emp).size() > 0) {
			return employeeDao.findMore(emp).get(0);
		}
		return null;
	}

	@Override
	public Employee getEmployee_userid(String userid) {
		return employeeDao.getEmployee_userid(userid);
	}
}
