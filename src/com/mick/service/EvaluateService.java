package com.mick.service;

import com.mick.entity.Evaluate;

public interface EvaluateService {
	// 添加评语
	int insert(Evaluate evaluate);

	// 修改评语
	int update(Evaluate evaluate);

	// 查看评语
	Evaluate select(String employee_id, String customer_id);
}
