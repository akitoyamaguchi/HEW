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
 * Servlet implementation class SelectShippingForm
 */
@WebServlet("/SelectShippingForm")
public class SelectShippingForm extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int selectShip = Integer.valueOf(request.getParameter("credit") );
		
		HttpSession session = request.getSession(false);
		// 1：通常配送
		// 2：日時指定配送
		if(selectShip == 1) {
			String[] dispMethod = {"normal"};
			session.setAttribute("dispMethodDetails", dispMethod);
			dispMethod = null;
		} else { 
			String month =  request.getParameter("shipping_month_select");
			String day = request.getParameter("shipping_day_select");
			String time = request.getParameter("shipping_time_select");
			String[] dispMethod = {month, day, time};
			session.setAttribute("dispMethodDetails", dispMethod);
			dispMethod = null;
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("buy_confirm.jsp");
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
