package com.mick.action;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.mick.entity.Customer;
import com.mick.entity.Follow;
import com.mick.service.CustomerService;
import com.mick.service.FollowService;

@Controller
@RequestMapping("/follow")
public class FollowAction {
	@Autowired
	private FollowService followService;
	@Autowired
	private CustomerService customerService;

	@RequestMapping("/add")
	public String add(Follow follow, Model model) {
		String id = follow.getId();
		followService.add(follow);
		Customer customer = customerService.getCustomer(id);
		List<Follow> follows = followService.getFollows(id);
		model.addAttribute("follows", follows);
		model.addAttribute("customer", customer);
		return "/pages/customer/select";
	}

	@RequestMapping("/delete")
	public String delete(String id, String customerid) {
		followService.delete(id);
		return "redirect:/customer/select?id=" + customerid;
	}
}
