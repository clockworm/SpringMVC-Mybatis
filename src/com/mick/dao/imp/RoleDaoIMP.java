package com.mick.dao.imp;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import javax.annotation.Resource;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;
import com.mick.dao.RoleDao;
import com.mick.entity.Page;
import com.mick.entity.Role;

@Repository
public class RoleDaoIMP implements RoleDao {

	@Resource
	private SqlSessionFactory sqlSessionFactory;

	@Override
	public int add(Role role) {
		SqlSession session = sqlSessionFactory.openSession();
		return session.insert("Role.insert", role);
	}

	@Override
	public int update(Role role) {
		SqlSession session = sqlSessionFactory.openSession();
		return session.update("Role.update", role);
	}

	@Override
	public Role find(Serializable id) {
		SqlSession session = sqlSessionFactory.openSession();
		return session.selectOne("Role.find", id);
	}

	@Override
	public List<Role> findRoles(List<String> roleids) {
		SqlSession session = sqlSessionFactory.openSession();
		if (roleids != null && roleids.size() > 0) {
			HashMap<String, List<String>> map = new HashMap<String, List<String>>();
			map.put("roleids", roleids);
			List<Role> list = session.selectList("Role.findRoles", map);
			return list;
		}
		return null;
	}

	@Override
	public List<Role> findMore(Role role) {
		SqlSession session = sqlSessionFactory.openSession();
		return session.selectList("Role.findMore", role);
	}

	@Override
	public List<Role> Query() {
		SqlSession session = sqlSessionFactory.openSession();
		return session.selectList("Role.query");
	}

	@Override
	public int delete(Serializable id) {
		SqlSession session = sqlSessionFactory.openSession();
		return session.delete("Role.delete", id);
	}

	@Override
	public Page pageQuery(Page page) {
		int startPage = (page.getCurrentPage() - 1) * page.getPageSize();
		page.setStartPageIndex(startPage);
		SqlSession session = sqlSessionFactory.openSession();
		List<Role> roles = session.selectList("Role.pageQuery", page);
		int count = getRows();
		int totalPage = (count + page.getPageSize() - 1) / page.getPageSize();
		page.setTotalPage(totalPage);
		page.setRecodeList(roles);
		return page;
	}

	@Override
	public int getRows() {
		SqlSession session = sqlSessionFactory.openSession();
		return session.selectOne("Role.getRows");
	}
}
