package jp.ac.hal.hew;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.ac.hal.debug.Log;
import jp.ac.hal.hew.dao.UserDAO;
import jp.ac.hal.hew.entity.User;
import jp.ac.hal.hew.util.PasswordUtil;

/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String mail;
	private String passwd;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		boolean result = false;
		
		try {
			mail = String.valueOf(request.getParameter("address") );
			passwd = String.valueOf(request.getParameter("passwd") );
			String safetyPasswd = PasswordUtil.getSafetyPassword(passwd, "");
			
			System.out.println("DEBUDG: " +mail );
			System.out.println("DEBUDG: " +safetyPasswd);
			
			
			UserDAO dao = new UserDAO();
			User user = dao.selectByAddressAndPasswd(mail, safetyPasswd);
			if(user != null) {
				result = true;
			}
		}catch (ClassNotFoundException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = null;
		HttpSession session = request.getSession();
		if(result == true) {
			dispatcher = request.getRequestDispatcher("index.jsp");
			
			// セッションにログイン状態保存
			session.setAttribute("isLogin", result);
			session.setAttribute("mail", mail);
			session.setAttribute("pass", passwd);
			
			Log.d("LOGIN", "SACSESS");
		} else {
			session.setAttribute("isLogin", result);
			dispatcher = request.getRequestDispatcher("login.jsp");
			
			Log.d("LOGIN", "FAILD");
		}
		dispatcher.forward(request, response);
	}

}
