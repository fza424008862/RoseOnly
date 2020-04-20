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
	 * ע��
	 */
	public void zhuce(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String phone=request.getParameter("phone");
		String pass=request.getParameter("pass");
		//��֤����������Ƿ����
			UserEntity entity = new UserEntity();
			entity.setUser_phone(phone);
			entity.setUser_pass(pass);
			
			try {
				//����ע�᷽��
				int row=userBiz.addUser(entity);
				if(row>0) {
					request.getSession().setAttribute("user_phone", phone);
					request.getRequestDispatcher("wedding_roseonly.jsp").forward(request, response);
				}else {
					request.setAttribute("error", "�û��������벻��Ϊ�գ���");
					/*request.getRequestDispatcher("error.jsp").forward(request, response);*/
				}
			}catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("error", "���ݲ����쳣");
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}
		}	
	
	
	/**
	 * ��¼
	 */
	public void login(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException {
		PrintWriter out=response.getWriter();
		
		String phone = request.getParameter("phone");
		String pass = request.getParameter("pass");
		
		UserEntity entity = new UserEntity();
		entity.setUser_phone(phone);
		entity.setUser_pass(pass);
		
		//����biz�еĵ�¼����
				try {
					int row=userBiz.login(entity);
					String user_id=userBiz.huoquId(phone);
					if(row>0) {
						//��¼�ɹ�
						request.getSession().setAttribute("user", entity);
						request.getSession().setAttribute("userId", user_id);
						if(request.getParameter("x").equals("shop")) {
							shop.inputOne(request, response);
						}else {
							response.sendRedirect("wedding_roseonly.jsp");
						}
					}else {
						//��¼ʧ�ܣ���ͬ�����û�
						request.setAttribute("error", "�û������������");
						request.getRequestDispatcher("error.jsp").forward(request, response);
					}
					
				} catch (Exception e) {
					e.printStackTrace();
					//��������Ϣ��ŵ�������
					request.setAttribute("error", "���ݲ����쳣");
					request.getRequestDispatcher("error.jsp").forward(request, response);
				}

			}
	public void shoplogin(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException {
		request.setAttribute("x", request.getParameter("x"));
		request.setAttribute("id", request.getParameter("id"));
		request.getRequestDispatcher("register.jsp").forward(request, response);
	}
	/**
	 * ���绰�����Ƿ����
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void checkPhone(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//ȡ�ͻ��˴���ĵ绰����
		String phone=request.getParameter("phone");
		System.out.println("�绰��"+phone);
		//����biz�ļ�鷽��
		try {
			boolean x=userBiz.checkPhone(phone);
			//�����ƴ��json�ַ���
			String y="{'message':'"+ (x?"�ú�������":"����")   +"'}";
			
			//д�뵽responseText��
			response.getWriter().write(y);
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "��������");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}
	public void removeUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().removeAttribute("user");
		request.getRequestDispatcher("wedding_roseonly.jsp").forward(request, response);
	}
	/**
	 * ��ѯ
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


