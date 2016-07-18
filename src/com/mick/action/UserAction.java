package com.mick.action;

import java.text.ParseException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.mick.entity.Page;
import com.mick.entity.Role;
import com.mick.entity.User;
import com.mick.service.RoleService;
import com.mick.service.UserService;
import com.mick.service.imp.RegisterValidateService;
import com.mick.util.AuthorityManage;
import com.mick.util.CookieUtil;
import com.mick.util.MemberAuthUtil;
import com.mick.util.ServiceException;
import com.mick.util.WebConstants;

@Controller
@RequestMapping("/user")
public class UserAction {
	@Resource
	private UserService userService;
	@Resource
	private RoleService roleService;
	@Resource
	private Page page;
	@Resource
	private RegisterValidateService registerValidateService;

	@RequestMapping("/login")
	public String login(String username, String password, String autologin, HttpSession httpSession) {
		boolean flag = MemberAuthUtil.isLogin(httpSession);
		if (flag) {
			return "/pages/index";
		}
		User user = userService.login(username, password, autologin);
		if (user == null) {
			httpSession.setAttribute("error", 2);
			return "redirect:/login.jsp";
		} else {
			List<Role> roles = user.getRoles();
			int authority = AuthorityManage.isAuthority(roles);
			if (authority == 0) {
				httpSession.setAttribute("error", 6);
				httpSession.removeAttribute(WebConstants.SESSION_LOGGED_ON_USER);
				return "redirect:/login.jsp";
			}
			MemberAuthUtil.logon(httpSession, user);
			return "/pages/index";
		}
	}

	@RequestMapping("/quit")
	public String quit(HttpSession httpSession, HttpServletResponse response) {
		User user = (User) httpSession.getAttribute(WebConstants.SESSION_LOGGED_ON_USER);
		if (user != null) {
			user.setAutologinAuthKey(null);
			userService.update(user);
			MemberAuthUtil.logout(httpSession);
			CookieUtil.destoryCookie(response);
		}
		return "redirect:/login.jsp";
	}

	@RequestMapping("/list")
	public String list(Model model, String sort, String currentPage) {
		Page pages = null;
		int current = 1;
		if (currentPage != null && !"".equals(currentPage)) {
			current = Integer.parseInt(currentPage);
		}
		page.setCurrentPage(current);
		if (sort == null || "".equals(sort)) {
			sort = "0";
		}
		page.setSort(sort);
		page.setPageSize(5);
		pages = userService.pageQuery(page);
		model.addAttribute("sort", sort);
		model.addAttribute("page", pages);
		return "/pages/user/list";
	}

	@RequestMapping("/register")
	public String register() {
		return "/pages/user/register";
	}

	@RequestMapping("/updatePage")
	public String updatePage(String id, Model model) {
		// 数据源保持同一连接
		User user = userService.getUser(id);
		List<Role> roles = userService.getRoles(user.getId());
		List<Role> roles2 = roleService.query();
		if (roles != null) {
			for (Role role : roles) {
				for (Role role2 : roles2) {
					if (role.getId().equals(role2.getId())) {
						role2.setMark(1);
					}
				}
			}
		}
		model.addAttribute("roles", roles2);
		model.addAttribute("user", user);
		return "/pages/user/update";
	}

	@RequestMapping("/update")
	public String update(String id, String[] roleid, Model model) {
		userService.updateRole(id, roleid);
		return "redirect:/user/list";
	}

	@RequestMapping("/regist")
	public String regist(String username, String password, String email, HttpSession httpSession) {
		httpSession.setAttribute("error", 3);
		User user = new User();
		user.setUsername(username);
		user.setEmail(email);
		user.setPassword(password);
		registerValidateService.processregister(user);// 发邮箱激活
		return "redirect:/activate.jsp";
	}

	@RequestMapping("/activate_email")
	public String activate_email(String email, String validateCode, HttpSession httpSession) {
		httpSession.setAttribute("error", 4);
		try {
			registerValidateService.processActivate(email, validateCode);
		} catch (ServiceException e) {
			httpSession.setAttribute("error", 3);
			System.out.println(e.getMessage());
		} catch (ParseException e) {
			httpSession.setAttribute("error", 5);
			System.out.println(e.getMessage());
		}
		return "redirect:/login.jsp";
	}

	@RequestMapping("/checkname")
	public @ResponseBody Map<String, Boolean> checkName(String username, String state) {
		if ("0".equals(state)) {
			User user = new User();
			user.setUsername(username);
			Map<String, Boolean> map = new HashMap<String, Boolean>();
			map.put("flag", userService.checkName(user));
			return map;
		}
		return null;
	}

	@RequestMapping("/checkEmail")
	public @ResponseBody Map<String, Boolean> checkEmail(String email, String state) {
		if ("0".equals(state)) {
			User user = new User();
			user.setEmail(email);
			Map<String, Boolean> map = new HashMap<String, Boolean>();
			map.put("flag", userService.checkEmai(user));
			return map;
		}
		return null;
	}
}