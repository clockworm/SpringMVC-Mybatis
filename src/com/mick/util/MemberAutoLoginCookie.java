package com.mick.util;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;

import com.mick.dao.UserDao;
import com.mick.entity.User;
import com.mick.service.UserService;
import com.mick.service.imp.UserServiceIMP;

/**
 * 自动登录处理
 */
@Controller
public class MemberAutoLoginCookie {
	/**
	 * 
	 * 添加Cookie 存入数据库 ---安全 自动登录Cookie值规范 用户ID+过期时间
	 * 
	 * @param response
	 *            服务器写回客户端 管道
	 * @param validTimeDay
	 *            有效时间
	 * @param user
	 *            用户对象---写入Cookie信息到用户对象
	 */
	public static void addAutoLoginCookie(HttpServletResponse response, User user, UserDao userDao) {
		// 过期时间点
		long expTimeDay = System.currentTimeMillis() + (long) (7 * 24 * 3600);
		String autologinAuthKey = user.getId() + "_" + expTimeDay;
		String cookieName = WebConstants.AUTO_LOGIN_COOKIE;
		String cookieValue = autologinAuthKey;
		String cookiePath = "/";
		int maxAge = 7 * 24 * 3600;
		CookieUtil.addCookie(cookieName, cookieValue, cookiePath, maxAge, response);
		user.setAutologinAuthKey(autologinAuthKey);
		userDao.update(user);
	}

	/**
	 * 尝试自动登录
	 * 
	 * @param request
	 *            服务器端读取客户端Cookie信息
	 * @param userService
	 *            数据库查询Cookie信息是否过期
	 * @throws IOException
	 * @throws ServletException
	 */
	public static void tryAutoLogin(HttpServletRequest request, HttpServletResponse response, UserService userservice)
			throws ServletException, IOException {
		// 已经登录就不用再次登录
		if (MemberAuthUtil.isLogin(request.getSession()) == false) {
			String cookieValue = CookieUtil.getCookieValue(WebConstants.AUTO_LOGIN_COOKIE, request);
			if (cookieValue != null && !"".equals(cookieValue)) {
				String[] cookieMsg = cookieValue.split("_");
				if (cookieMsg != null && (cookieMsg[0] != null && !"".equals(cookieMsg[0]))) {
					userservice = new UserServiceIMP();
					User user = userservice.find(cookieMsg[0]);
					// 用户存在并且cookie时间没有过期
					long now = System.currentTimeMillis();
					if ((user != null && now < Long.parseLong(cookieMsg[1]))
							&& user.getAutologinAuthKey().equals(cookieValue)) {
						int authority = AuthorityManage.isAuthority(user.getRoles());
						// 没有权限登录
						if (authority == 0) {
							request.getSession().setAttribute("error", 6);
							CookieUtil.destoryCookie(response);
							request.getSession().removeAttribute(WebConstants.SESSION_LOGGED_ON_USER);
							request.getRequestDispatcher("/login.jsp").forward(request, response);
							return;
						}
						MemberAuthUtil.logon(request.getSession(), user);
						request.getRequestDispatcher("/WEB-INF/pages/index.jsp").forward(request, response);
						return;
					}
				}
				request.getRequestDispatcher("/login.jsp").forward(request, response);
				return;
			}
		} else {
			request.getRequestDispatcher("/WEB-INF/pages/index.jsp").forward(request, response);
			return;
		}
	}
}