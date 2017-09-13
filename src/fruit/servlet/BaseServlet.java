package fruit.servlet;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class BaseServlet extends HttpServlet{
	/*�ڸ��ඨ�徲̬�������ض���--���ᱻ�ı䣬�������ֱ��ʹ��Ŷ��*/
	public final static String redirect = "redirect:";
	
	/*��BaseServlet����дservice()
	 * ���౻ִ��ʱ�����BaseServlet�е�service()
	 * ��service()�л�ȡ����ķ������֣�������
	 * ͨ������õ�����ķ���
	 * ͨ��invoke�������෽��
	 * */
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//System.out.println("������BaseServlet�е�service����");
		request.setCharacterEncoding("utf-8");
		//��ȡ����ķ�������������
		//localhost:8080/20170421_BaseServlet/?method=add
		String methodName = request.getParameter("method");
		
		try {
			//ͨ�������ȡ����ķ�������ǰ��.getMethod��������,������
			Method method = this.getClass().getMethod(methodName,HttpServletRequest.class,HttpServletResponse.class);
			//ͨ��invoke�������෽������this��������this�ǵ�ǰ���ö���
			String result = (String)method.invoke(this, request,response);
			
			/*
			System.out.println("invoke()�е�this��"+this);
			//invoke()�е�this��com.sram.servlet.BookServlet@1cc0a7f
			*/
			if(result!=null){
				if(result.startsWith(redirect)){
					//�ض���ҳ��--��ַ���仯
					response.sendRedirect(result.substring(redirect.length()));
				}else{
					//ת��ҳ��--��ַ������
					request.getRequestDispatcher(result).forward(request, response);
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
}
