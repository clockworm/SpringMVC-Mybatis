package com.mick.dao;

import java.util.List;
import com.mick.entity.User;

public interface UserDao extends DataDao<User> {
	public User login(User user);

	public List<User> QueryReverse();

	public List<String> getRoleID(String userid);

	public int deleteRole(String userid);

	public int insertRole(String userid, String[] roleid);

	public User getUser(String id);

}
