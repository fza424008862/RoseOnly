package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.ConsigneeBiz;
import entity.ConsigneeEntity;



/**
 * Servlet implementation class YanServlet
 */
@WebServlet("/YanServlet")
public class YanServlet extends BaseServlet {
	ConsigneeBiz ad=new ConsigneeBiz();
	/**
	 * 获取收货人信息
	 */
	public void addPeople(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String user_id=((List<UserEntity>)request.getSession().getAttribute("user")).get(0).getUser_id();
		String user_id=(String) request.getSession().getAttribute("userId");
		String name=request.getParameter("people");
		String phone=request.getParameter("phone");
		String sf=request.getParameter("sf");
		String cs=request.getParameter("cs");
		String xq=request.getParameter("xq");
		String dz=request.getParameter("dz");
		if(request.getParameter("pay")!=null) {
			request.setAttribute("id", request.getParameter("id"));
			request.setAttribute("zj", request.getParameter("zj"));
			request.setAttribute("spid", request.getParameter("spid"));
			request.setAttribute("pay", request.getParameter("pay"));
		}
/*		PrintWriter out=response.getWriter();
		out.print("123");*/
		//验证输入的数据是否合理
			ConsigneeEntity entity = new ConsigneeEntity();
			entity.setReceiveing_name(name);
			entity.setReceiveing_phone(phone);
			entity.setAddress(sf+cs+xq+dz);
			entity.setUser_id(user_id);
			try {
				//调用添加方法
				ad.addPeople(entity);
				this.chaxun(request, response);
			}catch (Exception e) {
				System.out.println(1);
				e.printStackTrace();
				request.setAttribute("error", "数据操作异常");
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}
		}
	public void chaxun(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String user_id=(String) request.getSession().getAttribute("userId");
		List<ConsigneeEntity> list=ad.chaxun(user_id);
		request.setAttribute("xxoo", list);
		PrintWriter out=response.getWriter();
		request.setAttribute("id", request.getParameter("id"));
		request.setAttribute("zj", request.getParameter("zj"));
		request.setAttribute("spid", request.getParameter("spid"));
		request.setAttribute("pay", request.getParameter("pay"));
		request.getRequestDispatcher("Yangzhen.jsp").forward(request, response);
	}
}
