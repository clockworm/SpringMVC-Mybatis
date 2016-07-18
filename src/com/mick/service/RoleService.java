package com.mick.service;

import java.util.List;

import com.mick.entity.Page;
import com.mick.entity.Role;

public interface RoleService {

	// 修改
	int update(Role role);

	// 添加
	int insert(Role role);

	// 分页查询
	Page pageQuery(Page page);

	// 查询信息
	Role getRole(String id);

	// 查询所有
	List<Role> query();
}
