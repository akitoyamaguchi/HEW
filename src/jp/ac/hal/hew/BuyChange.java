package jp.ac.hal.hew;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class BuyChange
 */
@WebServlet("/BuyChange")
public class BuyChange extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int delId = Integer.valueOf(request.getParameter("delId") );
		UserAddress ua;
		HttpSession session = request.getSession(false);
		String URL;
		
		if(session != null && session.getAttribute("isLogin") != null) {
			try {
				UserAddressDAO uadao = new UserAddressDAO();
				ProductDAO pdao = new ProductDAO();
				ua = uadao.seletById(delId, (String)session.getAttribute("mail") );
				Product product = pdao.seletById( (int)session.getAttribute("productId") );
				request.setAttribute("userAddress", ua);
				request.setAttribute("product", product);
			}catch(ClassNotFoundException e) {
				e.printStackTrace();
			}
			URL = "buy_change.jsp";
		} else {
			URL = "index.jsp";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(URL);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
