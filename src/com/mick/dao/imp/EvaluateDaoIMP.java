package com.mick.dao.imp;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;
import com.mick.dao.EvaluateDao;
import com.mick.entity.Evaluate;
import com.mick.entity.Page;

@Repository
public class EvaluateDaoIMP implements EvaluateDao {

	@Resource
	private SqlSessionFactory sqlSessionFactory;

	@Override
	public int add(Evaluate obj) {
		SqlSession session = sqlSessionFactory.openSession();
		obj.setId(UUID.randomUUID().toString());
		return session.insert("Evaluate.insert", obj);
	}

	@Override
	public int delete(Serializable id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Evaluate obj) {
		SqlSession session = sqlSessionFactory.openSession();
		return session.update("Evaluate.update", obj);
	}

	@Override
	public Evaluate find(Serializable id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Evaluate> Query() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Evaluate> findMore(Evaluate obj) {
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
	public Evaluate getEvaluate(String employee_id, String customer_id) {
		SqlSession session = sqlSessionFactory.openSession();
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("employee_id", employee_id);
		map.put("customer_id", customer_id);
		return session.selectOne("Evaluate.getEvaluate", map);
	}

}
