package com.mick.service.imp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import com.mick.dao.FollowDao;
import com.mick.entity.Follow;
import com.mick.service.FollowService;

@Service
public class FollowServiceIMP implements FollowService {
	@Resource
	private FollowDao followDao;

	@Override
	public int add(Follow follow) {
		return followDao.add(follow);
	}

	@Override
	public List<Follow> getFollows(String customerid) {
		return followDao.getFollows(customerid);
	}

	@Override
	public int delete(String id) {
		return followDao.delete(id);
	}
}
