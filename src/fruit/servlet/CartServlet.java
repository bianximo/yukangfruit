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
		// ������������
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		// ��ȡ�����ֶ�method��ֵ��������ת��Ϊint��
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
		// ��ȡ��Ʒ��name
		String name = request.getParameter("goodsName");
		// ���ﳵ�Ǳ�����session��
		HttpSession session = request.getSession();
		// ��session���õ����ﳵ
		Map<Goods, Integer> cart = (Map<Goods, Integer>) session.getAttribute("cart");
		/**
		 * ����Map�е�����keyҲ������Ʒ������������е���Ʒ��id�� �������빺�ﳵ��id��ͬ������ԭ���������Ϝpȥ
		 */
		for (Goods temp : cart.keySet()) {
			if(temp.getGoodsName().equals(name)){
				cart.remove(temp);
				break;
			}
		}
		// ��cart����session
		session.setAttribute("cart", cart);
		// �ض���
		response.sendRedirect("customer/cart.jsp");
	}

	// ������ӹ��ﳵ������
	public void addCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// ��ȡ��Ʒ��id
		String name = request.getParameter("goodsName");
		int num = Integer.parseInt(request.getParameter("goodsNum"));
		
		// �õ���Ʒ
		GoodsDao gd = new GoodsDaoImpl();
		Goods g = gd.find(name);
		// ���ﳵ�Ǳ�����session��
		HttpSession session = request.getSession();
		// ��session���õ����ﳵ
		Map<Goods, Integer> cart = (Map<Goods, Integer>) session.getAttribute("cart");
		// ���cart�����ڣ��ʹ������ﳵ
		if (cart == null) {
			cart = new HashMap<Goods, Integer>();
		}
		/**
		 * ����Map�е�����keyҲ������Ʒ������������е���Ʒ��id�� �������빺�ﳵ��id��ͬ������ԭ���������ϣ�1
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
		// ���û�з��ֹ��ﳵԭ����ͬ����Ʒ����ֱ�Ӽ���
		if (flag) {
			cart.put(g, num);
		}
		// ��cart����session
		session.setAttribute("cart", cart);
		// �ض���
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
