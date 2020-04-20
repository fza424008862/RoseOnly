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
		//获取op请求参数
		String op = request.getParameter("op");
		//获取当前类的字节码对象
		Class c = this.getClass();
		// 通过反射实现多请求处理
		try {
			// 获取方法对象，Method可以指向类中的某一个方法
			Method m = c.getMethod(op, HttpServletRequest.class, HttpServletResponse.class);
			// 动态调用方法
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
