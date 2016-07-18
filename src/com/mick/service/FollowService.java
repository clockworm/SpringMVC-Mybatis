package com.mick.service;

import java.util.List;

import com.mick.entity.Follow;

public interface FollowService {
	public int add(Follow follow);

	public List<Follow> getFollows(String customerid);

	public int delete(String id);
}
