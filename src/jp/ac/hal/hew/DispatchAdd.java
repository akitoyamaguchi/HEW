package jp.ac.hal.hew;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jp.ac.hal.hew.dao.UserAddressDAO;
import jp.ac.hal.hew.entity.UserAddress;

/**
 * Servlet implementation class DispatchAdd
 */
@WebServlet("/DispatchAdd")
public class DispatchAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int count = 0;
		HttpSession session = request.getSession(false);
		if(session != null && session.getAttribute("mail") != null) {
			try {
				UserAddressDAO uadao = new UserAddressDAO();
				count = uadao.columCount(String.valueOf(session.getAttribute("mail") ) );
			}catch(ClassNotFoundException e) {
				e.printStackTrace();
			}
		}
		
		if(count >= 5) {
			response.sendRedirect("/HEW/index.jsp");
		} else {
			count += 1;
			try {
				UserAddressDAO uadao = new UserAddressDAO();
				uadao.insert(new UserAddress(
						(String)session.getAttribute("mail"),
						count,
						(String)request.getParameter("name"),
						(String)request.getParameter("kana"),
						(String)request.getParameter("zipcode"),
						(String)request.getParameter("address"),
						(String)request.getParameter("phone") ) );
			}catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			// 確認画面はスキップ
			response.sendRedirect("/HEW/dispatch_add_complete.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
