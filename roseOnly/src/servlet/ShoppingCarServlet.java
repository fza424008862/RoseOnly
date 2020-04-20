package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.ShoppingCarBiz;
import entity.ShopCarView;
import entity.ShoppingCarEntity;
import entity.UserEntity;

@WebServlet("/ShoppingCarServlet")
public class ShoppingCarServlet extends BaseServlet {
	ShoppingCarBiz spb=new ShoppingCarBiz();
	ShopServlet ss=new ShopServlet();
	public void ShopCar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_id=(String) request.getSession().getAttribute("userId");
		try {
			List<ShoppingCarEntity> list=spb.Selectshop(user_id);
			request.setAttribute("list", list);
			request.getRequestDispatcher("ShopCar.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			// 将错误消息存放到作用域
			request.setAttribute("error", "数据操作异常");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
		
	}
	public void Change(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String number=request.getParameter("number");
		String price=request.getParameter("price");
		String shopping_id=request.getParameter("shopid");
		
		try {
			 //更新数量和价格
			int row=spb.change(number,price,shopping_id);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "操作有误！");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}
	public void Car(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ShoppingCarEntity shopcar=new ShoppingCarEntity();
		shopcar.setUser_id(request.getParameter("uid"));
		shopcar.setCommodity_id(request.getParameter("sid"));
		shopcar.setCommodity_type_id(request.getParameter("cid"));
		shopcar.setSeries_id(request.getParameter("xlid"));
		shopcar.setType_id(request.getParameter("lxid"));
		shopcar.setSpecifications_id(request.getParameter("ggid"));
		shopcar.setPrice(Double.parseDouble((String)request.getParameter("tojg")));
		shopcar.setTotal_prices(Double.parseDouble((String)request.getParameter("tojg")));
		shopcar.setCommodity_name(request.getParameter("name"));
		shopcar.setNumber(Integer.parseInt((String)request.getParameter("num")));
		try {
			spb.addCar(shopcar);
//			this.ShopCar(request, response);
			request.setAttribute("id", request.getParameter("sid"));
			request.setAttribute("cg", "添加成功!");
			ss.inputOne(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "操作有误！");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}
}
