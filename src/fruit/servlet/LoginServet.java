package fruit.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fruit.dao.UserDao;
import fruit.daoimpl.UserDaoImpl;

/**
 * Servlet implementation class LoginServet
 */
@WebServlet(name = "LoginServlet", urlPatterns = "/LoginServlet")
public class LoginServet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String username, password;
		if (request.getAttribute("Username") != null && request.getAttribute("Password") != null) {
			username = (String) request.getAttribute("Username");
			password = (String) request.getAttribute("Password");
		}else{
			username = request.getParameter("Username");
			password = request.getParameter("Password");
		}
		String seller = request.getParameter("Seller");
		if(seller!=null&&seller.equals("seller")){
			//登录到后台管理系统
		}else{
			UserDao ud = new UserDaoImpl();
			boolean login = ud.login(username, password);
			if(login){
				request.getSession().setAttribute("Username", username);
				response.sendRedirect("customer/index.jsp");
			}else{
				request.setAttribute("LoginFlag", false);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");
				dispatcher.forward(request, response);
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
