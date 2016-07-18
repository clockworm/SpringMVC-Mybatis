package com.mick.dao.imp;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.UUID;
import javax.annotation.Resource;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;
import com.mick.dao.FollowDao;
import com.mick.entity.Customer;
import com.mick.entity.Follow;
import com.mick.entity.Page;

@Repository
public class FollowDaoIMP implements FollowDao {
	@Resource
	private SqlSessionFactory sqlSessionFactory;

	@Override
	public int add(Follow follow) {
		String customerid = follow.getId();
		Customer customer = new Customer();
		customer.setId(customerid);
		follow.setCustomer(customer);
		follow.setId(UUID.randomUUID().toString());
		follow.setCreateDate(new Date());
		SqlSession session = sqlSessionFactory.openSession();
		return session.insert("Follow.insert", follow);
	}

	@Override
	public int delete(Serializable id) {
		SqlSession session = sqlSessionFactory.openSession();
		return session.update("Follow.delete", id);
	}

	@Override
	public int update(Follow follow) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Follow find(Serializable id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Follow> Query() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Follow> findMore(Follow follow) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Page pageQuery(Page page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getRows() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Follow> getFollows(String customerid) {
		SqlSession session = sqlSessionFactory.openSession();
		List<Follow> list = session.selectList("Follow.getFollows", customerid);
		return list;
	}

}
