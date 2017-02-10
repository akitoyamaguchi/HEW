package jp.ac.hal.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class HewFilter implements Filter {
	private String encoding = null;
	
	@Override
	public void destroy() {
		// TODO 自動生成されたメソッド・スタブ

	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		// TODO 自動生成されたメソッド・スタブ

	}

	@Override
	public void init(FilterConfig config) throws ServletException {
		// TODO 自動生成されたメソッド・スタブ
		encoding = config.getInitParameter("encoding");

	}

}
