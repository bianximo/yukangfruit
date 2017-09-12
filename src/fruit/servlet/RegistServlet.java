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
import fruit.entity.User;

/**
 * Servlet implementation class RegistServlet
 */

@WebServlet(name="RegistServlet",urlPatterns="/RegistServlet")

public class RegistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegistServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		User u = new User();
		u.setUserName(request.getParameter("Name"));
		u.setPassword(request.getParameter("Password"));
		u.setAddress(request.getParameter("Address"));
		u.setTel(request.getParameter("Tel"));
		UserDao ud = new UserDaoImpl();
		if (ud.regist(u) == 1) {
			request.setAttribute("Username", request.getParameter("Name"));
			request.setAttribute("Password", request.getParameter("Password"));
			RequestDispatcher dispatcher = request.getRequestDispatcher("/LoginServlet");
			dispatcher.forward(request, response);
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");
			dispatcher.forward(request, response);
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
