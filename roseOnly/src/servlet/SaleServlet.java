package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.SaleBiz;
import biz.SellBiz;
import entity.OrderView;
import entity.SaleEntity;
import entity.SellEntity;
import entity.ShoppingCarEntity;
import entity.UserEntity;
import entity.goodsImgView;
@WebServlet("/SaleServlet")

public class SaleServlet extends BaseServlet {
	SaleBiz sb=new SaleBiz();
	SellBiz sell=new SellBiz();
	
	public void Sell(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_id=(String) request.getSession().getAttribute("userId");
		
		try {
			List<OrderView> list=sb.SelectSale(user_id);
			List<SaleEntity> list2=sb.SelectByUserId(user_id);
			//将集合存放到request
			request.setAttribute("list", list);
			request.setAttribute("list2", list2);
			request.getRequestDispatcher("userOrders.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			// 将错误消息存放到作用域
			request.setAttribute("error", "数据操作异常");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
		
	}
	
	/**
	 * 后台显示订单数据
	 */
	public void Saleshow(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			List<SaleEntity> list=sb.Select();
			request.setAttribute("list", list);
			request.getRequestDispatcher("dingdan.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			// 将错误消息存放到作用域
			request.setAttribute("error", "数据操作异常");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}
	public void SelectImgUrl(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_id=(String) request.getSession().getAttribute("userId");
		
		try {
			List<goodsImgView> urlList=sb.SelectImg(user_id);
		} catch (Exception e) {
			e.printStackTrace();
			// 将错误消息存放到作用域
			request.setAttribute("error", "数据操作异常");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}
	public void UpdatePay(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String sale_id=request.getParameter("sale_id");
		try {
			int row=sb.Updatepay(sale_id);
			int row2=sb.updateTime(sale_id);
			if(row>0&&row2>0) {
				response.sendRedirect("PaySuccess.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
			// 将错误消息存放到作用域
			request.setAttribute("error", "数据操作异常");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}
	public void fk(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String shopping_id[]=request.getParameter("id").split(",");
		String commodity_id[]=request.getParameter("spid").split(",");
		String user_id=(String) request.getSession().getAttribute("userId");
		String zj=request.getParameter("zj");
		String shr=request.getParameter("shr");
		String sdh=request.getParameter("sdh");
		String sdz=request.getParameter("sdz");
		try {
			List<UserEntity> list=sb.cx(user_id);
			int row1=sb.addsale(list.get(0), zj,shr,sdh,sdz);
			for(int i=0;i<shopping_id.length;i++) {
			//根据用户id和购物车id查询购物车信息
			List<ShoppingCarEntity> row=sb.selectshop(user_id, shopping_id[i]);
				out.print(row.get(0).getCommodity_name());
				sb.addsell(row.get(0), commodity_id[i]);
				sb.updateS(shopping_id[i]);
				
			}
			this.Sell(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	/**
	 * 后台发货按钮
	 */
	public void fahuo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sale_id=request.getParameter("sale_id");
		try {
			int row=sb.fh(sale_id);
			SaleQueryServlet a=new SaleQueryServlet();
			a.service(request, response);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
	}
	
}
