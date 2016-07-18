package com.mick.service.imp;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.mick.dao.RoleDao;
import com.mick.entity.Page;
import com.mick.entity.Role;
import com.mick.service.RoleService;

@Service
public class RoleServiceIMP implements RoleService {
	@Resource
	private RoleDao roleDao;

	@Override
	public int update(Role role) {
		return roleDao.update(role);
	}

	@Override
	public Page pageQuery(Page page) {
		return roleDao.pageQuery(page);
	}

	@Override
	public Role getRole(String id) {
		return roleDao.find(id);
	}

	@Override
	public int insert(Role role) {
		return roleDao.add(role);
	}

	@Override
	public List<Role> query() {
		return roleDao.Query();
	}
}