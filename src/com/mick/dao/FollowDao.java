package com.mick.dao;

import java.util.List;

import com.mick.entity.Follow;

public interface FollowDao extends DataDao<Follow> {

	List<Follow> getFollows(String customerid);

}
