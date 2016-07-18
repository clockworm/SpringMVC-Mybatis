package com.mick.service.imp;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.mick.dao.EvaluateDao;
import com.mick.entity.Evaluate;
import com.mick.service.EvaluateService;

@Service
public class EvaluateServiceIMP implements EvaluateService {
	@Resource
	private EvaluateDao evaluateDao;

	@Override
	public int insert(Evaluate evaluate) {
		return evaluateDao.add(evaluate);
	}

	@Override
	public int update(Evaluate evaluate) {
		return evaluateDao.update(evaluate);
	}

	@Override
	public Evaluate select(String employee_id, String customer_id) {
		return evaluateDao.getEvaluate(employee_id, customer_id);
	}

}
