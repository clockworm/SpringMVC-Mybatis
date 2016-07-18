package com.mick.action;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.mick.entity.Page;
import com.mick.entity.Role;
import com.mick.service.RoleService;

@Controller
@RequestMapping("/role")
public class RoleAction {
	@Resource
	private RoleService roleService;
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
		pageList = roleService.pageQuery(page);
		model.addAttribute("page", pageList);
		return "/pages/role/list";
	}

	@RequestMapping("/add")
	public String add() {
		return "/pages/role/add";
	}

	@RequestMapping("/insert")
	public String insert(Role role) {
		if (role != null) {
			roleService.insert(role);
		}
		return "redirect:/role/list";
	}

	@RequestMapping("/updatePage")
	public String updatePage(String id, Model model) {
		Role role = roleService.getRole(id);
		model.addAttribute("role", role);
		return "/pages/role/update";
	}

	@RequestMapping("/update")
	public String update(Role role) {
		if (role != null) {
			roleService.update(role);
		}
		return "redirect:/role/list";
	}

}
