package jp.ac.hal.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;

import jp.ac.hal.debug.Log;

public class HewFilter implements Filter {
	private String encoding;
	
	@Override
	public void destroy() {
		// TODO 自動生成されたメソッド・スタブ

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO 自動生成されたメソッド・スタブ
		request.setCharacterEncoding(encoding);
		
		HttpSession session = ((HttpServletRequest) request).getSession(false);

		if(session != null) {
			Log.d("SESSION", "YES");
			if(session.getAttribute("isLogin") != null) {
				boolean isLogin = Boolean.valueOf(session.getAttribute("isLogin").toString() );
				if(isLogin) {
					Log.d("USER_STATUS", "LOGINED");
				} else {
					Log.d("USER_STATUS", "LOGOUT");
				}
			}
		} else {
			Log.d("SESSION", "NO");
		}
		
		chain.doFilter(request, response);
		
	}

	@Override
	public void init(FilterConfig config) throws ServletException {
		// TODO 自動生成されたメソッド・スタブ
		encoding = config.getInitParameter("encoding");

	}

}
