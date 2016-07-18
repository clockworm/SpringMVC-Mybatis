package com.mick.action;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.mick.entity.Employee;
import com.mick.entity.Page;
import com.mick.entity.User;
import com.mick.service.EmployeeService;
import com.mick.service.UserService;

@Controller
@RequestMapping("/employee")
public class EmployeeAciton {
	@Resource
	private EmployeeService employeeService;
	@Resource
	private UserService userService;
	@Resource
	private Page page;

	@RequestMapping("/list")
	public String list(Model model, String currentPage) {
		Page pageList = null;
		int current = 1;
		if (currentPage != null && !"".equals(currentPage)) {
			current = Integer.parseInt(currentPage);
		}
		page.setCurrentPage(current);
		page.setPageSize(5);
		pageList = employeeService.pageQuery(page);
		model.addAttribute("page", pageList);
		return "/pages/employee/list";
	}

	@RequestMapping("/add")
	public String add() {
		return "/pages/employee/add";
	}

	@RequestMapping("/insert")
	public String insert(Employee employee) {
		if (employee != null) {
			employeeService.insert(employee);
		}
		return "redirect:/employee/list";
	}

	@RequestMapping("/updatePage")
	public String updatePage(String id, Model model) {
		Employee employee = employeeService.getEmployee(id);
		model.addAttribute("employee", employee);
		return "/pages/employee/update";
	}

	@RequestMapping("/update")
	public String update(Employee employee) {
		if (employee != null) {
			employeeService.update(employee);
		}
		return "redirect:/employee/list";
	}

	@RequestMapping("/select")
	public String select(String id, Model model) {
		Employee employee = employeeService.getEmployee(id);
		model.addAttribute("employee", employee);
		return "/pages/employee/select";
	}

	@RequestMapping("/binguser")
	public String binguser(String id, String username, Model model) {
		Employee employee = employeeService.getEmployee(id);
		model.addAttribute("employee", employee);
		if (username != null && !"".equals(username)) {
			User user = new User();
			user.setUsername(username);
			List<User> users = userService.findMore(user);
			if (users.size() > 0) {
				boolean flag = employeeService.isbingUser(users.get(0).getId());
				if (!flag) {
					employee.setUser(users.get(0));
					employeeService.update(employee);
					return "redirect:/employee/list";
				} else {
					model.addAttribute("msg", "账户已绑定其他员工");
				}
			} else {
				model.addAttribute("msg", "账户不存在");
			}
		}
		return "/pages/employee/binguser";
	}

	@RequestMapping("/updatebing")
	public String updatebing(String id, String username, Model model) {
		Employee employee = employeeService.getEmployee(id);
		model.addAttribute("employee", employee);
		model.addAttribute("username", username);
		return "/pages/employee/binguser";
	}

	@RequestMapping("/updatebinguser")
	public String updatebinguser(String id, String username, Model model) {
		Employee employee = employeeService.getEmployee(id);
		User olduser = userService.getUser(employee.getUser().getId());
		if (username != null && !"".equals(username)) {
			User user = new User();
			user.setUsername(username);
			List<User> users = userService.findMore(user);
			if (users.size() > 0) {
				employee.setUser(null);
				employeeService.update(employee);
				boolean flag = employeeService.isbingUser(users.get(0).getId());
				if (!flag) {
					employee.setUser(users.get(0));
					employeeService.update(employee);
					return "redirect:/employee/list";
				} else {
					employee.setUser(olduser);
					employeeService.update(employee);
					model.addAttribute("msg", "账户已绑定其他员工");
				}
			} else {
				model.addAttribute("msg", "账户不存在");
			}
		}
		Employee employee2 = employeeService.getEmployee(id);
		model.addAttribute("employee", employee2);
		return "/pages/employee/binguser";
	}

	@RequestMapping("/search")
	public String search(Model model, String employeeName, String employeePosition, String currentPage) {
		Page pages = null;
		int current = 1;
		if (currentPage != null && !"".equals(currentPage)) {
			current = Integer.parseInt(currentPage);
		}
		page.setCurrentPage(current);
		page.setPageSize(5);
		pages = employeeService.pageQuerySearch(page, employeeName, employeePosition);
		model.addAttribute("search", 1);
		model.addAttribute("employeeName", employeeName);
		model.addAttribute("employeePosition", employeePosition);
		model.addAttribute("page", pages);
		return "/pages/employee/list";
	}

}
