package servlet;


import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class BaseServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		//��ȡop�������
		String op = request.getParameter("op");
		//��ȡ��ǰ����ֽ������
		Class c = this.getClass();
		// ͨ������ʵ�ֶ�������
		try {
			// ��ȡ��������Method����ָ�����е�ĳһ������
			Method m = c.getMethod(op, HttpServletRequest.class, HttpServletResponse.class);
			// ��̬���÷���
			m.invoke(this, request, response);
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
		} catch (SecurityException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		} 
	}

}
