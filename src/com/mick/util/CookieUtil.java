package com.mick.util;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieUtil {
	/**
	 * 创建Cookie对象
	 * 
	 * @param cookieName
	 *            鍵名称
	 * @param cookieValue
	 *            鍵值
	 * @param cookiePath
	 *            路径
	 * @param maxAge
	 *            有效时间
	 * @param response
	 *            服务器写回客户端 管道
	 */
	public static void addCookie(String cookieName, String cookieValue, String cookiePath, Integer maxAge,
			HttpServletResponse response) {
		if (cookiePath == null) {
			cookiePath = "/";
		}
		if (maxAge == null) {
			maxAge = 0;
		}
		Cookie cookie = new Cookie(cookieName, cookieValue);
		cookie.setMaxAge(maxAge);
		cookie.setPath(cookiePath);
		response.addCookie(cookie);
	}

	/**
	 * 得到Cookie对象里的值
	 * 
	 * @param cookieName
	 *            键名
	 * @param request
	 *            服务器端读取客户端 管道
	 * @return 键值
	 */
	public static String getCookieValue(String cookieName, HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		if (cookies == null) {
			return null;
		}
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals(cookieName)) {
				return cookie.getValue();
			}
		}
		return null;
	}

	// 销毁Cookie
	public static void destoryCookie(HttpServletResponse response) {
		String cookieName = WebConstants.AUTO_LOGIN_COOKIE;
		String cookieValue = "";
		String cookiePath = "/";
		Cookie cookie = new Cookie(cookieName, cookieValue);
		cookie.setMaxAge(0);
		cookie.setPath(cookiePath);
		response.addCookie(cookie);
	}
}
