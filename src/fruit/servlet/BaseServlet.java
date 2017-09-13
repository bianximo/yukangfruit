package fruit.servlet;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class BaseServlet extends HttpServlet{
	/*在父类定义静态常量：重定向--不会被改变，子类可以直接使用哦！*/
	public final static String redirect = "redirect:";
	
	/*在BaseServlet中重写service()
	 * 子类被执行时会访问BaseServlet中的service()
	 * 在service()中获取子类的方法名字（参数）
	 * 通过反射得到子类的方法
	 * 通过invoke调用子类方法
	 * */
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//System.out.println("调用了BaseServlet中的service方法");
		request.setCharacterEncoding("utf-8");
		//获取子类的方法名（参数）
		//localhost:8080/20170421_BaseServlet/?method=add
		String methodName = request.getParameter("method");
		
		try {
			//通过反射获取子类的方法：当前类.getMethod（方法名,参数）
			Method method = this.getClass().getMethod(methodName,HttpServletRequest.class,HttpServletResponse.class);
			//通过invoke调用子类方法：（this，参数）this是当前调用对象
			String result = (String)method.invoke(this, request,response);
			
			/*
			System.out.println("invoke()中的this："+this);
			//invoke()中的this：com.sram.servlet.BookServlet@1cc0a7f
			*/
			if(result!=null){
				if(result.startsWith(redirect)){
					//重定向页面--地址栏变化
					response.sendRedirect(result.substring(redirect.length()));
				}else{
					//转发页面--地址栏不变
					request.getRequestDispatcher(result).forward(request, response);
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
}
