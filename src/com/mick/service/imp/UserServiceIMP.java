package com.mick.service.imp;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mick.dao.RoleDao;
import com.mick.dao.UserDao;
import com.mick.dao.imp.RoleDaoIMP;
import com.mick.dao.imp.UserDaoIMP;
import com.mick.entity.Page;
import com.mick.entity.Role;
import com.mick.entity.User;
import com.mick.service.UserService;
import com.mick.util.MemberAutoLoginCookie;

@Service
public class UserServiceIMP implements UserService {
	@Autowired
	private UserDao userDao;
	@Autowired
	private RoleDao roleDao;
	@Autowired
	private HttpServletResponse response;

	public void setRequest(HttpServletResponse request) {
		this.response = request;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public User login(String username, String password, String autologin) {
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		user = userDao.login(user);
		if (user != null) {
			List<Role> roles = getRoles(user.getId());
			user.setRoles(roles);
			if ("sure".equals(autologin)) {
				MemberAutoLoginCookie.addAutoLoginCookie(response, user, userDao);
			} else {
				user.setAutologinAuthKey(null);
				userDao.update(user);
			}
			return user;
		}
		return null;
	}

	@Override
	public User find(String id) {
		userDao = new UserDaoIMP();
		User user = userDao.find(id);
		return user;
	}

	@Override
	public int update(User user) {
		return userDao.update(user);
	}

	@Override
	public List<User> query() {
		return userDao.Query();
	}

	@Override
	public List<User> queryReverse() {
		return userDao.QueryReverse();
	}

	@Override
	@SuppressWarnings("unchecked")
	public Page pageQuery(Page page) {
		Page p = userDao.pageQuery(page);
		List<User> recodeList = (List<User>) p.getRecodeList();
		for (User user : recodeList) {
			List<Role> roles = getRoles(user.getId());
			user.setRoles(roles);
		}
		p.setRecodeList(recodeList);
		return p;
	}

	@Override
	public boolean checkName(User user) {
		return userDao.findMore(user).size() == 0;
	}

	@Override
	public boolean checkEmai(User user) {
		return userDao.findMore(user).size() == 0;
	}

	@Override
	public int insert(User user) {
		return userDao.add(user);
	}

	@Override
	public List<User> findMore(User user) {
		return userDao.findMore(user);
	}

	@Override
	public List<Role> getRoles(String userid) {
		List<String> roleIDs = userDao.getRoleID(userid);
		if (roleDao == null) {
			roleDao = new RoleDaoIMP();
		}
		return roleDao.findRoles(roleIDs);
	}

	@Override
	public int updateRole(String userid, String[] roleid) {
		userDao.deleteRole(userid);
		return userDao.insertRole(userid, roleid);
	}

	@Override
	public int insertRole(String userid, String[] roleid) {
		return userDao.insertRole(userid, roleid);
	}

	@Override
	public User getUser(String id) {
		return userDao.getUser(id);
	}
}
