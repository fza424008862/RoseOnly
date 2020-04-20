package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.UserBiz;
import entity.UserEntity;
import fsdx.SendSms;

@WebServlet("/UserServlet")
public class UserServlet  extends BaseServlet{
	UserBiz userBiz = new UserBiz();
	ShopServlet shop=new ShopServlet();
	
	/**
	 * 注册
	 */
	public void zhuce(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String phone=request.getParameter("phone");
		String pass=request.getParameter("pass");
		//验证输入的数据是否合理
			UserEntity entity = new UserEntity();
			entity.setUser_phone(phone);
			entity.setUser_pass(pass);
			
			try {
				//调用注册方法
				int row=userBiz.addUser(entity);
				if(row>0) {
					request.getSession().setAttribute("user_phone", phone);
					request.getRequestDispatcher("wedding_roseonly.jsp").forward(request, response);
				}else {
					request.setAttribute("error", "用户名和密码不能为空！！");
					/*request.getRequestDispatcher("error.jsp").forward(request, response);*/
				}
			}catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("error", "数据操作异常");
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}
		}	
	
	
	/**
	 * 登录
	 */
	public void login(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException {
		PrintWriter out=response.getWriter();
		
		String phone = request.getParameter("phone");
		String pass = request.getParameter("pass");
		
		UserEntity entity = new UserEntity();
		entity.setUser_phone(phone);
		entity.setUser_pass(pass);
		
		//调用biz中的登录方法
				try {
					int row=userBiz.login(entity);
					String user_id=userBiz.huoquId(phone);
					if(row>0) {
						//登录成功
						request.getSession().setAttribute("user", entity);
						request.getSession().setAttribute("userId", user_id);
						if(request.getParameter("x").equals("shop")) {
							shop.inputOne(request, response);
						}else {
							response.sendRedirect("wedding_roseonly.jsp");
						}
					}else {
						//登录失败：有同名的用户
						request.setAttribute("error", "用户名或密码错误");
						request.getRequestDispatcher("error.jsp").forward(request, response);
					}
					
				} catch (Exception e) {
					e.printStackTrace();
					//将错误消息存放到作用域
					request.setAttribute("error", "数据操作异常");
					request.getRequestDispatcher("error.jsp").forward(request, response);
				}

			}
	public void shoplogin(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException {
		request.setAttribute("x", request.getParameter("x"));
		request.setAttribute("id", request.getParameter("id"));
		request.getRequestDispatcher("register.jsp").forward(request, response);
	}
	/**
	 * 检查电话号码是否存在
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void checkPhone(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//取客户端传入的电话号码
		String phone=request.getParameter("phone");
		System.out.println("电话："+phone);
		//调用biz的检查方法
		try {
			boolean x=userBiz.checkPhone(phone);
			//将结果拼成json字符串
			String y="{'message':'"+ (x?"该号码已用":"可用")   +"'}";
			
			//写入到responseText中
			response.getWriter().write(y);
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "操作有误！");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}
	public void removeUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().removeAttribute("user");
		request.getRequestDispatcher("wedding_roseonly.jsp").forward(request, response);
	}
	/**
	 * 查询
	 */
	public void chaxun(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<UserEntity> list=userBiz.chaxun();
		request.setAttribute("xxoo", list);
		request.getRequestDispatcher("member/Shop_hotai_huiyuan.jsp").forward(request, response);
    }
	public void yzm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String phone=request.getParameter("phone");
		 System.out.println(phone);
		try {
			String code = SendSms.genUniqueKey();
			SendSms.sendSms(phone, code);
	        String asd= "{'yzm':"+code+"}";
	        response.getWriter().write(asd);
	        
	        System.out.println(code);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}


