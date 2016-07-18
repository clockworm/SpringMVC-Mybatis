package com.mick.action;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.mick.entity.Customer;
import com.mick.entity.Employee;
import com.mick.entity.Follow;
import com.mick.entity.Page;
import com.mick.entity.User;
import com.mick.service.CustomerService;
import com.mick.service.EmployeeService;
import com.mick.service.FollowService;
import com.mick.util.WebConstants;

@Controller
@RequestMapping("/customer")
public class CustomerAction {
	@Resource
	private CustomerService customerService;
	@Resource
	private EmployeeService employeeService;
	@Resource
	private FollowService followService;
	@Resource
	private Page page;

	@RequestMapping("/addCustomer")
	public String addCustomer(Customer customer, HttpSession httpSession) {
		User user = (User) httpSession.getAttribute(WebConstants.SESSION_LOGGED_ON_USER);
		if (user != null) {
			Employee employee = employeeService.getEmployee_userid(user.getId());
			if (employee != null) {
				customer.setEmployee(employee);
			}
		}
		if (customer != null) {
			customerService.add(customer);
		}
		return "redirect:/customer/list";
	}

	@RequestMapping("/list")
	public String list(Model model, String currentPage) {
		Page pages = null;
		int current = 1;
		if (currentPage != null && !"".equals(currentPage)) {
			current = Integer.parseInt(currentPage);
		}
		page.setCurrentPage(current);
		page.setPageSize(5);
		pages = customerService.pageQuery(page);
		model.addAttribute("page", pages);
		return "/pages/customer/list";
	}

	@RequestMapping("/addPage")
	public String addPage() {
		return "/pages/customer/add";
	}

	@RequestMapping("/updatePage")
	public String updatePage(String id, Model model) {
		Customer customer = customerService.getCustomer(id);
		model.addAttribute("customer", customer);
		return "/pages/customer/update";
	}

	@RequestMapping("/select")
	public String select(String id, Model model) {
		Customer customer = customerService.getCustomer(id);
		List<Follow> follows = followService.getFollows(id);
		model.addAttribute("follows", follows);
		model.addAttribute("customer", customer);
		return "/pages/customer/select";
	}

	@RequestMapping("/update")
	public String update(Customer customer) {
		if (customer.getEmployee() != null && !"".equals(customer.getEmployee().getEmployeeName())) {
			Employee employee = employeeService.findEmployee(customer.getEmployee().getEmployeeName());
			if (employee != null) {
				customer.setEmployee(employee);
				customerService.update(customer);
			} else {
				return "redirect:/customer/update";
			}
		}
		return "redirect:/customer/list";
	}

	@RequestMapping("/search")
	public String search(Customer customer, Model model, String currentPage) {
		Page pages = null;
		int current = 1;
		if (currentPage != null && !"".equals(currentPage)) {
			current = Integer.parseInt(currentPage);
		}
		page.setCurrentPage(current);
		page.setPageSize(5);
		pages = customerService.pageQuerySearch(page, customer);
		model.addAttribute("search", 1);
		model.addAttribute("name", customer.getName());
		model.addAttribute("page", pages);
		return "/pages/customer/list";
	}

	@RequestMapping("/count")
	public String search() {
		return "/pages/customer/count";
	}
}
