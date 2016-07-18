package com.mick.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import com.mick.service.UserService;
import com.mick.util.MemberAutoLoginCookie;

/**
 * 实现自动登录
 */

public class MemberAutoLoginFilter implements Filter {
	public void init(FilterConfig fConfig) throws ServletException {
	}

	@Autowired
	private UserService userservice;

	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) res;
		MemberAutoLoginCookie.tryAutoLogin(request, response, userservice);
		chain.doFilter(request, response);
	}

	public void destroy() {
	}
}
