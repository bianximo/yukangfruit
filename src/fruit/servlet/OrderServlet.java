package fruit.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fruit.dao.GoodsDao;
import fruit.dao.OrderDao;
import fruit.dao.UserDao;
import fruit.daoimpl.GoodsDaoImpl;
import fruit.daoimpl.OrderDaoImpl;
import fruit.daoimpl.UserDaoImpl;
import fruit.entity.Goods;
import fruit.entity.Order;

/**
 * Servlet implementation class OrderServlet
 */
@WebServlet(name = "OrderServlet", urlPatterns = "/OrderServlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public OrderServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 处理中文乱码
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		// 获取隐藏字段method的值，并把它转换为int型
		int method = Integer.parseInt(request.getParameter("method"));

		switch (method) {
		case 1:
			this.generate(request, response);
			break;
		case 2:
			this.add(request, response);
			break;

		case 3:
			this.show(request, response);
		}
		
		
	}

	private void show(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();
		String userName = (String) session.getAttribute("Username");
		UserDao ud = new UserDaoImpl();
		OrderDao od = new OrderDaoImpl();
		int id = ud.findByUserName(userName).getId();
		List<Order>list = od.findByUserId(id);
		session.setAttribute("orders", list);
		response.sendRedirect("customer/showOrder.jsp");
	}

	private void add(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();
		Map<Goods, Integer> buyGoods = (Map<Goods, Integer>) session.getAttribute("buyGoods");
		String userName = (String) session.getAttribute("Username");
		String transType = request.getParameter("transType");
		String address = request.getParameter("address");
		UserDao ud = new UserDaoImpl();
		OrderDao od = new OrderDaoImpl();
		for (Goods g : buyGoods.keySet()) {
			Order o = new Order(g.getGoodsName(), ud.findByUserName(userName).getId(), buyGoods.get(g), g.getPrice(),
					transType, address);
			od.add(o);
		}
		session.removeAttribute("cart");
		response.sendRedirect("customer/produ.jsp");
	}

	private void generate(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session = request.getSession();
		Map<Goods, Integer> buyGoods = new HashMap<>();
		String[] boxs = request.getParameterValues("isBuy");
		GoodsDao gd = new GoodsDaoImpl();
		double total = 0;
		for (String string : boxs) {
			String goodsNum = request.getParameter("" + string.hashCode());
			Goods g = gd.find(string);
			int num = Integer.parseInt(goodsNum);
			buyGoods.put(g, num);
			total += g.getPrice() * num;
		}

		session.setAttribute("buyGoods", buyGoods);
		session.setAttribute("total", total);
		response.sendRedirect("customer/confirmation.jsp");
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
