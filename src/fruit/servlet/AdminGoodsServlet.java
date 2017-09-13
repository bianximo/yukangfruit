package fruit.servlet;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.media.sound.RealTimeSequencerProvider;

import fruit.dao.GoodsDao;
import fruit.daoimpl.GoodsDaoImpl;
import fruit.entity.Goods;

public class AdminGoodsServlet extends BaseServlet{
	public void GoodList(HttpServletRequest request,HttpServletResponse response){
	//HttpSession session = request.getSession();
		GoodsDao goodsdao = new GoodsDaoImpl();
		List<Goods> glist = goodsdao.findAll();
		String path = request.getContextPath();
		request.setAttribute("glist",glist);
		//return "/admins/shops_index.jsp";
//		return "/admins/Products.jsp";
//		return redirect+path+"/admins/Products.jsp";
		try {
			request.getRequestDispatcher("/admins/Products.jsp").forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public String delete(HttpServletRequest request,HttpServletResponse response){
		GoodsDao goodsdao = new GoodsDaoImpl();
		String id = request.getParameter("goodsId");
		System.out.println(id);
		try {
			
//			int ii = Integer.parseInt(id);
			int ii = Integer.valueOf(id).intValue();
//			Number(id);
			goodsdao.delete(ii);
			return redirect+"goodsServlet?method=GoodList";
		} catch (Exception e) {
			// TODO: handle exception
			return redirect+"goodsServlet?method=GoodList";
		}
	}
	
	public String updatequery(HttpServletRequest request,HttpServletResponse response){
		GoodsDao goodsdao = new GoodsDaoImpl();
		String id = request.getParameter("goodsId");
		
		try {
			int ii = Integer.valueOf(id).intValue();
			Goods  goods = goodsdao.findById(ii);
//			Goods  goods = goodsdao.findbyID(Integer.parseInt(id));
			request.setAttribute("goodss", goods);
			return "/admins/goodsupdate.jsp";
		} catch (Exception e) {
			// TODO: handle exception
			return redirect+"goodsServlet?method=GoodList";
		}
	}
	
	public String update(){
		
		return "";
	}
	
	public String addGoods(HttpServletRequest request,HttpServletResponse response){
		String URL = request.getContextPath();
		String imgURL = URL+"/images";
		String goodsImgPath = request.getParameter("goodsImgPath");
		
		String goodsName = request.getParameter("goodsName");
		String goodsPrice = request.getParameter("goodsPrice");
		double goodsPric =Double.valueOf(goodsPrice).doubleValue();
		int goodsSale = 0;
		String goodsStock = request.getParameter("goodsStock");
		String goodsDesc = request.getParameter("goodsDesc");
		String goodsType = request.getParameter("goodsType");
		String datetime = request.getParameter("time");
		int goodsStoc = Integer.valueOf(goodsStock).intValue();
		GoodsDao goodsdao = new GoodsDaoImpl();
		Goods goods = new Goods(goodsName, goodsPric, goodsSale, goodsStoc, goodsDesc, goodsImgPath,goodsType,datetime);
		 goodsdao.add(goods);
		
		return "goodsServlet?method=GoodList";
	}

	
}
