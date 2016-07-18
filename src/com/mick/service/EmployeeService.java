package com.mick.service;

import java.util.List;
import com.mick.entity.Employee;
import com.mick.entity.Page;

public interface EmployeeService {

	// 修改
	int update(Employee employee);

	// 增加员工
	int insert(Employee employee);

	// 查询所有用户
	List<Employee> query();

	// 排序查询
	List<Employee> queryReverse();

	// 分页查询
	Page pageQuery(Page page);

	// 查询信息
	Employee getEmployee(String id);

	// 分页条件查询
	Page pageQuerySearch(Page page, Object... objects);

	// 是否绑定用户
	boolean isbingUser(String userid);

	// 通过名字得到对象
	Employee findEmployee(String employeeName);

	// 通过绑定用户得到员工
	Employee getEmployee_userid(String userid);
}
