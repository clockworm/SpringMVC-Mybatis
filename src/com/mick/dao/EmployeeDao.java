package com.mick.dao;

import java.util.List;
import com.mick.entity.Employee;
import com.mick.entity.Page;

public interface EmployeeDao extends DataDao<Employee> {
	public List<Employee> QueryReverse();

	public Page pageQuerySearch(Page page, Object... objects);

	public boolean isbingUser(String id);

	public Employee getEmployee_userid(String userid);
}
