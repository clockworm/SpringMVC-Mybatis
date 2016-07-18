package com.mick.util;

import java.util.List;
import javax.servlet.http.HttpSession;
import com.mick.entity.Role;
import com.mick.entity.User;

/**
 * 权限控制
 * 
 * @author Administrator
 *
 */
public class AuthorityManage {

	public static int isAuthority(HttpSession httpSession) {
		User user = (User) httpSession.getAttribute(WebConstants.SESSION_LOGGED_ON_USER);
		List<Role> roles = user.getRoles();
		if (roles.size() > 0) {
			if (isManager(roles)) {
				return 2;
			} else if (isBusiness(roles)) {
				return 1;
			}
		}
		return 0;
	}

	public static int isAuthority(List<Role> roles) {
		if (roles.size() > 0) {
			if (isManager(roles)) {
				return 2;
			} else if (isBusiness(roles)) {
				return 1;
			}
		}
		return 0;
	}

	private static boolean isManager(List<Role> roles) {
		for (Role role : roles) {
			if ("领导".equals(role.getName()))
				return true;
		}
		return false;
	}

	private static boolean isBusiness(List<Role> roles) {
		for (Role role : roles) {
			if ("业务人员".equals(role.getName()))
				return true;
		}
		return false;
	}
}
