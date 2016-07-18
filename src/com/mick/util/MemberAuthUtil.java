package com.mick.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import com.mick.entity.User;

public class MemberAuthUtil {
	public static boolean isLogin(HttpSession httpSession) {
		User user = (User) httpSession.getAttribute(WebConstants.SESSION_LOGGED_ON_USER);
		if (user == null)
			return false;
		return true;
	}

	public static void logon(HttpSession httpSession, User user) {
		httpSession.setAttribute(WebConstants.SESSION_LOGGED_ON_USER, user);
	}

	public static void logout(HttpSession session) {
		session.invalidate();
	}

	public static boolean isSuperMan(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute(WebConstants.SESSION_LOGGED_ON_USER);
		if (user != null && "superman".equals(user.getUsername()))
			return true;
		return false;
	}
}
