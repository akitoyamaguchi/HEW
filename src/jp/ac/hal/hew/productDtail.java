package jp.ac.hal.hew;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jp.ac.hal.hew.dao.CategoryDAO;
import jp.ac.hal.hew.dao.MakerDAO;
import jp.ac.hal.hew.dao.ProductDAO;
import jp.ac.hal.hew.dao.ProductImagesDAO;
import jp.ac.hal.hew.entity.Category;
import jp.ac.hal.hew.entity.Makers;
import jp.ac.hal.hew.entity.Product;
import jp.ac.hal.hew.entity.ProductImages;

/**
 * Servlet implementation class productDtail
 */
@WebServlet("/productDtail")
public class productDtail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.valueOf(request.getParameter("id").toString() ); 
		
		Product product = null;
		Category category = null;
		Makers maker = null;
		List<ProductImages> pis = new ArrayList<ProductImages>();
		
		try {
			ProductDAO pdao = new ProductDAO();
			CategoryDAO cdao = new CategoryDAO();
			MakerDAO mdao = new MakerDAO();
			ProductImagesDAO pidao = new ProductImagesDAO();
			product = pdao.seletById(id);
			category = cdao.seletById(product.getCategory() );
			maker = mdao.seletById(product.getMaker() );
			pis = pidao.seletById(id);
			
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		request.setAttribute("detail", product);
		request.setAttribute("category", category);
		request.setAttribute("maker", maker);
		request.setAttribute("productImages", pis);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("product_detail.jsp");
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
