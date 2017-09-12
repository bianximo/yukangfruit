package fruit.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fruit.dao.GoodsDao;
import fruit.daoimpl.GoodsDaoImpl;
import fruit.entity.Goods;

/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CartServlet() {
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
		// 处理中文乱码
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		// 获取隐藏字段method的值，并把它转换为int型
		int method = Integer.parseInt(request.getParameter("method"));

		switch (method) {
		case 1:
			this.delete(request, response);
			break;
		case 2:
			this.addCart(request, response);
			break;

		}
	}

	
	
	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 获取商品的name
		String name = request.getParameter("goodsName");
		// 购物车是保存在session中
		HttpSession session = request.getSession();
		// 从session中拿到购物车
		Map<Goods, Integer> cart = (Map<Goods, Integer>) session.getAttribute("cart");
		/**
		 * 遍历Map中的所有key也就是商品对象，如果发现有的商品的id和 即将加入购物车的id相同，就在原来的数量上減去
		 */
		for (Goods temp : cart.keySet()) {
			if(temp.getGoodsName().equals(name)){
				cart.remove(temp);
				break;
			}
		}
		// 将cart放入session
		session.setAttribute("cart", cart);
		// 重定向
		response.sendRedirect("customer/cart.jsp");
	}

	// 处理添加购物车的请求
	public void addCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 获取商品的id
		String name = request.getParameter("goodsName");
		int num = Integer.parseInt(request.getParameter("goodsNum"));
		
		// 得到商品
		GoodsDao gd = new GoodsDaoImpl();
		Goods g = gd.find(name);
		// 购物车是保存在session中
		HttpSession session = request.getSession();
		// 从session中拿到购物车
		Map<Goods, Integer> cart = (Map<Goods, Integer>) session.getAttribute("cart");
		// 如果cart不存在，就创建购物车
		if (cart == null) {
			cart = new HashMap<Goods, Integer>();
		}
		/**
		 * 遍历Map中的所有key也就是商品对象，如果发现有的商品的id和 即将加入购物车的id相同，就在原来的数量上＋1
		 */
		boolean flag = true;
		for (Goods temp : cart.keySet()) {
			if(temp.getGoodsName().equals(name)){
				int newNum = cart.get(temp)+num;
				cart.put(temp, newNum);
				flag = false;
				break;
			}
		}
		// 如果没有发现购物车原来相同的商品，就直接加入
		if (flag) {
			cart.put(g, num);
		}
		// 将cart放入session
		session.setAttribute("cart", cart);
		// 重定向
		response.sendRedirect("customer/produ.jsp");
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
