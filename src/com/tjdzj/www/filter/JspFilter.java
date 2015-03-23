package com.tjdzj.www.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 不允许直接访问jsp
 * 所有对jsp的直接访问，跳转到首页面
 * @author Pangjx
 *
 */
public class JspFilter implements Filter {
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpServletRequest = (HttpServletRequest) request;
		HttpServletResponse httpServletResponse = (HttpServletResponse) response;
		String url = httpServletRequest.getRequestURI();
		
		System.out.println("url--"+url);
		System.out.println("endsWith--"+ url.endsWith("upload_jsonstruts2.jsp"));
		if(url != null && url.endsWith(".jsp") && !url.endsWith("upload_jsonstruts2.jsp")) {
			httpServletResponse.sendRedirect(httpServletRequest.getContextPath());
			return;
		}
		chain.doFilter(request, response);
	}

	@Override
	public void destroy() {
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
	}
}