package com.mick.dao.imp;

import java.io.IOException;
import java.io.Reader;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Repository;
import com.mick.dao.UserDao;
import com.mick.entity.Page;
import com.mick.entity.Role;
import com.mick.entity.User;

@Repository
public class UserDaoIMP implements UserDao {
	@Resource
	private SqlSessionFactory sqlSessionFactory;

	@Override
	public int add(User user) {
		SqlSession session = sqlSessionFactory.openSession();
		return session.insert("User.insert", user);
	}

	@Override
	public int delete(Serializable id) {
		SqlSession session = sqlSessionFactory.openSession();
		return session.delete("User.delete", id);
	}

	@Override
	public int update(User user) {
		SqlSession session = sqlSessionFactory.openSession();
		int update = session.update("User.update", user);
		return update;
	}

	@Override
	public User find(Serializable id) {
		Reader reader;
		User user;
		SqlSession session = null;
		try {
			reader = Resources.getResourceAsReader("Configuration.xml");
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
			session = sqlSessionFactory.openSession();
			user = session.selectOne("User.find", id);
			List<String> roleids = session.selectList("User.getRoleID", id);
			if (roleids.size() > 0) {
				HashMap<String, List<String>> map = new HashMap<String, List<String>>();
				map.put("roleids", roleids);
				List<Role> roles = session.selectList("Role.findRoles", map);
				user.setRoles(roles);
			}
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		} finally {
			session.close();
		}
		return user;
	}

	@Override
	public List<User> Query() {
		SqlSession session = sqlSessionFactory.openSession();
		List<User> users = session.selectList("User.query");
		return users;
	}

	@Override
	public List<User> findMore(User user) {
		SqlSession session = sqlSessionFactory.openSession();
		return session.selectList("User.findMore", user);
	}

	@Override
	public Page pageQuery(Page page) {
		int startPage = (page.getCurrentPage() - 1) * page.getPageSize();
		page.setStartPageIndex(startPage);
		SqlSession session = sqlSessionFactory.openSession();
		List<User> users = session.selectList("User.pageQuery", page);
		int count = getRows();
		int totalPage = (count + page.getPageSize() - 1) / page.getPageSize();
		page.setTotalPage(totalPage);
		page.setRecodeList(users);
		page.setCount(count);
		return page;
	}

	@Override
	public User login(User user) {
		SqlSession session = sqlSessionFactory.openSession();
		User u = session.selectOne("User.login", user);
		return u;
	}

	@Override
	public List<User> QueryReverse() {
		SqlSession session = sqlSessionFactory.openSession();
		List<User> users = session.selectList("User.queryReverse");
		return users;
	}

	@Override
	public int getRows() {
		SqlSession session = sqlSessionFactory.openSession();
		return session.selectOne("User.getRows");
	}

	@Override
	public List<String> getRoleID(String userid) {
		SqlSession session = sqlSessionFactory.openSession();
		return session.selectList("User.getRoleID", userid);
	}

	@Override
	public int deleteRole(String userid) {
		SqlSession session = sqlSessionFactory.openSession();
		List<String> roleids = getRoleID(userid);
		int count = 0;
		Map<String, Object> map = new HashMap<String, Object>();
		if (roleids != null && roleids.size() > 0) {
			map.put("roleids", roleids);
			map.put("userid", userid);
			count += session.delete("User.deleteRole", map);
		}
		return count;
	}

	@Override
	public int insertRole(String userid, String[] roleids) {
		SqlSession session = sqlSessionFactory.openSession();
		int count = 0;
		if (roleids != null && roleids.length > 0) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("roleids", roleids);
			map.put("userid", userid);
			count += session.insert("User.insertRole", map);
		}
		return count;
	}

	@Override
	public User getUser(String id) {
		SqlSession session = sqlSessionFactory.openSession();
		return session.selectOne("User.find", id);
	}
}
