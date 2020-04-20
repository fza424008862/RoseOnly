package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.SaleBiz;
import entity.SaleEntity;
import entity.SellEntity;

@WebServlet("/SaleQueryServlet")
public class SaleQueryServlet extends HttpServlet{
	SaleBiz sb=new SaleBiz();
	
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 设置字符集
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		try {
			//从页面获取当前页码
			int page=Integer.parseInt(request.getParameter("txtpage"));
			//调用分页查询方法
			List<SaleEntity> salelist=sb.queryPageGoods(page);
			//调用总页数方法
			int pages=sb.getGoodsPages();
			//存放到request对象
			request.setAttribute("pages", pages);
			request.setAttribute("salelist", salelist);
			request.getRequestDispatcher("order/dingdan.jsp").forward(request, response);
		
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}		
	}

}
