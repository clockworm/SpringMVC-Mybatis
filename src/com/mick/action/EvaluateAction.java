package com.mick.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.mick.entity.Evaluate;
import com.mick.service.EvaluateService;

@Controller
@RequestMapping("/evaluate")
public class EvaluateAction {
	@Autowired
	private EvaluateService evaluateService;

	@RequestMapping("/insert")
	public String insert(Evaluate evaluate) {
		evaluateService.insert(evaluate);
		return "redirect:/customer/list";
	}

	@RequestMapping("/update")
	public String update(Evaluate evaluate) {
		Evaluate evaluate2 = evaluateService.select(evaluate.getEmployee_id(), evaluate.getCustomer_id());
		evaluate2.setDesc(evaluate.getDesc());
		evaluateService.update(evaluate2);
		return "redirect:/customer/list";
	}

	@RequestMapping("/addPage")
	public String addpage(Evaluate evaluate, String employeeName, Model model) {
		if (evaluate != null && !"".equals(evaluate.getCustomer_id()) && !"".equals(evaluate.getEmployee_id())) {
			Evaluate evaluate2 = evaluateService.select(evaluate.getEmployee_id(), evaluate.getCustomer_id());
			if (evaluate2 != null) {
				evaluate = evaluate2;
			}
		}
		model.addAttribute("evaluate", evaluate);
		model.addAttribute("employeeName", employeeName);
		return "pages/evaluate/add";
	}
}
