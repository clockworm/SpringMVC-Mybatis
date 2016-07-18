package com.mick.service;

import java.util.List;

import com.mick.entity.Page;
import com.mick.entity.Role;
import com.mick.entity.User;

public interface UserService {
	// 登录
	User login(String username, String password, String autologin);

	// 通过ID获得对象
	User find(String id);

	// 修改
	int update(User user);

	// 查询所有用户
	List<User> query();

	// 排序查询
	List<User> queryReverse();

	// 分页查询
	Page pageQuery(Page page);

	// 检查名称
	boolean checkName(User user);

	// 检查邮箱
	boolean checkEmai(User user);

	// 注册
	int insert(User user);

	// 查询更多
	List<User> findMore(User user);

	// 查询该用户角色
	List<Role> getRoles(String userid);

	// 修改角色
	int updateRole(String userid, String[] roleid);

	// 增加默认角色
	int insertRole(String userid, String[] roleid);

	// 得到用户 无拦截
	User getUser(String id);

}
