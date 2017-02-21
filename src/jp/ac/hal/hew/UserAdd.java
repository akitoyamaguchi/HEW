package jp.ac.hal.hew;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserAdd
 */
@WebServlet("/UserAdd")
public class UserAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		boolean result = false;
		
		try {
			String mail = String.valueOf(request.getParameter("mail") );
			String passwd = String.valueOf(request.getParameter("passwd") );
			String safetyPasswd = PasswordUtil.getSafetyPassword(passwd, "");
			
			
			UserDAO dao = new UserDAO();
			User user = new User(mail, safetyPasswd, true);
			result = dao.insert(user);
		}catch (ClassNotFoundException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		String url;
		if(result) {
			url = "/member_register_complete.jsp";

		} else {
			//エラーページ未実装
			url = "/index.html";
			System.out.println("デバッグ用：ユーザ登録に失敗しました。");
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);		
	}

}
