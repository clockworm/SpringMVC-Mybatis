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
import com.mick.dao.EmployeeDao;
import com.mick.dao.UserDao;
import com.mick.entity.Employee;
import com.mick.entity.Page;
import com.mick.entity.User;

@Repository
public class EmployeeDaoIMP implements EmployeeDao {

	@Resource
	private SqlSessionFactory sqlSessionFactory;
	@Resource
	private UserDao userDao;

	@Override
	public int add(Employee employee) {
		employee.setId(UUID.randomUUID().toString());
		employee.setCreateDate(new Date());
		SqlSession session = sqlSessionFactory.openSession();
		return session.insert("Employee.insert", employee);
	}

	@Override
	public int delete(Serializable id) {
		SqlSession session = sqlSessionFactory.openSession();
		return session.delete("Employee.delete", id);
	}

	@Override
	public int update(Employee employee) {
		SqlSession session = sqlSessionFactory.openSession();
		return session.update("Employee.update", employee);
	}

	@Override
	public Employee find(Serializable id) {
		SqlSession session = sqlSessionFactory.openSession();
		Employee employee = session.selectOne("Employee.find", id);
		return employee;
	}

	@Override
	public List<Employee> Query() {
		SqlSession session = sqlSessionFactory.openSession();
		List<Employee> Employees = session.selectList("Employee.query");
		return Employees;
	}

	@Override
	public List<Employee> findMore(Employee employee) {
		SqlSession session = sqlSessionFactory.openSession();
		return session.selectList("Employee.findMore", employee);
	}

	@Override
	public Page pageQuery(Page page) {
		int startPage = (page.getCurrentPage() - 1) * page.getPageSize();
		page.setStartPageIndex(startPage);
		SqlSession session = sqlSessionFactory.openSession();
		List<Employee> employees = session.selectList("Employee.pageQuery", page);
		for (Employee employee : employees) {
			if (employee.getUser() != null) {
				User user = userDao.getUser(employee.getUser().getId());
				employee.setUser(user);
			}
		}
		int count = getRows();
		int totalPage = (count + page.getPageSize() - 1) / page.getPageSize();
		page.setTotalPage(totalPage);
		page.setRecodeList(employees);
		page.setCount(count);
		return page;
	}

	@Override
	public List<Employee> QueryReverse() {
		SqlSession session = sqlSessionFactory.openSession();
		List<Employee> Employees = session.selectList("Employee.queryReverse");
		return Employees;
	}

	@Override
	public int getRows() {
		SqlSession session = sqlSessionFactory.openSession();
		return session.selectOne("Employee.getRows");
	}

	public int getRows(Object... objects) {
		SqlSession session = sqlSessionFactory.openSession();
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("employeeName", objects[0]);
		map.put("employeePosition", objects[1]);
		return session.selectOne("Employee.getRowSearch", map);
	}

	@Override
	public Page pageQuerySearch(Page page, Object... objects) {
		int startPage = (page.getCurrentPage() - 1) * page.getPageSize();
		page.setStartPageIndex(startPage);
		SqlSession session = sqlSessionFactory.openSession();
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("employeeName", objects[0]);
		map.put("employeePosition", objects[1]);
		map.put("page", page);
		List<User> users = session.selectList("Employee.pageQuerySearch", map);
		int count = getRows(objects);
		int totalPage = (count + page.getPageSize() - 1) / page.getPageSize();
		page.setTotalPage(totalPage);
		page.setRecodeList(users);
		return page;
	}

	@Override
	public boolean isbingUser(String id) {
		SqlSession session = sqlSessionFactory.openSession();
		int flag = session.selectOne("Employee.isbing", id);
		if (flag > 0) {
			return true;
		}
		return false;
	}

	@Override
	public Employee getEmployee_userid(String userid) {
		SqlSession session = sqlSessionFactory.openSession();
		return session.selectOne("Employee.getEmployee_userid", userid);
	}
}
