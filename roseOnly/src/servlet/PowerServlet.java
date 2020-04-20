package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.PowerBiz;
import entity.EmployeeEntity;
import entity.PowerEntity;
import entity.TitleEntity;

/**
 * Servlet implementation class PowerServlet
 */
@WebServlet("/PowerServlet")
public class PowerServlet extends BaseServlet {
	PowerBiz pb=new PowerBiz();
	
	/**
	 * 添加员工
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void addPower(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String pn=request.getParameter("power_name");
			
		// 将数据封装到实体对象
		PowerEntity pe=new PowerEntity();
		pe.setPower_name(pn);
		
		// 调用biz中的添加方法
		try {
			int row=pb.addPower(pe);
			if(row>0) {
				request.setAttribute("ok", "新增成功！");
				this.queryAllPower(request, response);

			} else {
				request.setAttribute("error", "新增失败。");
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}

		} catch (Exception e) {
			e.printStackTrace();
			// 将错误消息存放到作用域
			request.setAttribute("error", "数据操作异常");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}
	
	/**
	 *  删除权限id
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	public void deletePower(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		PrintWriter out=response.getWriter();
		//获取要删除的employee_id
		String power_id=request.getParameter("power_id");
		
		try {
			pb.deletePower(power_id);
			this.queryAllPower(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "操作有误！");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}	
	}
	
	/**
	 * 批量删除
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	public void deleteAllPower(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		PrintWriter out=response.getWriter();
		String array2=request.getParameter("det");
		String[] det=array2.split(",");
		try {
			List<PowerEntity> powerList=pb.queryAllPower();
			for(int i=0;i<det.length;i++) {
				for(int j=0;j<powerList.size();j++) {
					if(det[i].equals(powerList.get(j).getPower_id()));
						powerList.remove(j);
						break;
				}
			}
			request.setAttribute("power", powerList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			out.print("数据操作异常！");
		}
		request.getRequestDispatcher("/permissions/right_list.jsp").forward(request, response);
	}
	
	/**
	 * 修改角色
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException 
	 */
	public void updatePower(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
		PrintWriter out=response.getWriter();
		String choose=request.getParameter("choose");
		if(choose.equals("edit")) {
			request.setAttribute("power_name", request.getParameter("power_name"));
			request.getRequestDispatcher("/permissions/right_edit.jsp").forward(request, response);
		}else if(choose.equals("Preservation")) {
			String oldname=request.getParameter("oldpower_name");
			String pn=request.getParameter("power_name");
				
			// 将数据封装到实体对象
			PowerEntity pe=new PowerEntity();
			pe.setPower_name(pn);
			// 调用biz中的添加方法
			try {
				int row=pb.updatePower(pe,oldname);
				this.queryAllPower(request, response);

			} catch (Exception e) {
				e.printStackTrace();
				// 将错误消息存放到作用域
				request.setAttribute("error", "数据操作异常");
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}
		}	
	}
	
	/**
	 * 查询所有权限信息
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	public void queryAllPower(HttpServletRequest request, HttpServletResponse response) throws IOException{
		PrintWriter out=response.getWriter();
		//调用biz的查询方法
		try {
			List<PowerEntity> powerList=pb.queryAllPower();
			//将集合存放到request
			request.setAttribute("power", powerList);
			request.getRequestDispatcher("/permissions/right_list.jsp").forward(request, response);
		} catch (Exception e) {
			e.getStackTrace();
			out.print("数据操作异常！");
		}
	}
}
