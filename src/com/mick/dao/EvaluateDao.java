package com.mick.dao;

import com.mick.entity.Evaluate;

public interface EvaluateDao extends DataDao<Evaluate> {
	public Evaluate getEvaluate(String employee_id, String customer_id);
}
