package com.mick.dao;

import java.util.List;
import com.mick.entity.Role;

public interface RoleDao extends DataDao<Role> {

	public List<Role> findRoles(List<String> roleids);

}
