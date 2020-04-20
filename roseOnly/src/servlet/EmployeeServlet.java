package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.EmployeeBiz;
import entity.EmployeeEntity;
import entity.TitleEntity;

/**
 * Servlet implementation class EmployeeServlet
 */
@WebServlet("/EmployeeServlet")
public class EmployeeServlet extends BaseServlet {
	EmployeeBiz eb=new EmployeeBiz();
	
	/**
	 * 登录方法
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	public void enterEmployee(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		// 取值
		String n = request.getParameter("employee_name");
		String p = request.getParameter("employee_pass");
		// 将数据封装到实体对象
		EmployeeEntity ee = new EmployeeEntity();
		ee.setEmployee_name(n);
		ee.setEmployee_pass(p);
		// 调用Biz登录方法
		try {
			int row = eb.enter(ee);
			if (row > 0) {
				request.setAttribute("ok", "登录成功！");
				request.getRequestDispatcher("/system/default.jsp").forward(request, response);
			} else {
				// 登录失败：
				request.setAttribute("error", "用户名或密码错误！");
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
	 * 添加员工
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void addEmployee(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String en=request.getParameter("employee_name");
		String ep=request.getParameter("employee_pass");
		String ti=request.getParameter("title_id");
		String c=request.getParameter("contact");
			
		// 将数据封装到实体对象
		EmployeeEntity ee=new EmployeeEntity();
		ee.setEmployee_name(en);
		ee.setEmployee_pass(ep);
		ee.setTitle_id(ti);
		ee.setContact(c);
		
		// 调用biz中的添加方法
		try {
			int row=eb.addEmployee(ee);
			if(row>0) {
				request.setAttribute("ok", "新增成功！");
				this.queryAllEmployee(request, response);

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
	 * 删除员工id
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public void deleteEmployee(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		PrintWriter out=response.getWriter();
		//获取要删除的employee_id
		String employee_id=request.getParameter("employee_id");
		
		try {
			eb.deleteEmployee(employee_id);
			this.queryAllEmployee(request, response);
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
	public void deleteAllEmployee(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		PrintWriter out=response.getWriter();
		String array2=request.getParameter("det");
		String[] det=array2.split(",");
		try {
			List<EmployeeEntity> employeeList=eb.queryAllEmployee();
			for(int i=0;i<det.length;i++) {
				for(int j=0;j<employeeList.size();j++) {
					if(det[i].equals(employeeList.get(j).getEmployee_id()));
						employeeList.remove(j);
						break;
				}
			}
			request.setAttribute("employee", employeeList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			out.print("数据操作异常！");
		}
		request.getRequestDispatcher("/permissions/admin_list.jsp").forward(request, response);
	}
	
	/**
	 * 修改员工
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	public void updateEmployee(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		PrintWriter out=response.getWriter();
		String choose=request.getParameter("choose");
		TitleServlet titleServlet=new TitleServlet();
		if(choose.equals("edit")) {
			request.setAttribute("employee_name", request.getParameter("employee_name"));
			request.setAttribute("employee_pass", request.getParameter("employee_pass"));
			request.setAttribute("title_id", request.getParameter("title_id"));
			request.setAttribute("contact", request.getParameter("contact"));
			request.setAttribute("choose", request.getParameter("choose"));
			titleServlet.queryAllTitle(request, response);
		}else if(choose.equals("Preservation")) {
			String oldname=request.getParameter("oldemployee_name");
			String en=request.getParameter("employee_name");
			String ep=request.getParameter("employee_pass");
			String ti=request.getParameter("title_id");
			String c=request.getParameter("contact");
				
			// 将数据封装到实体对象
			EmployeeEntity ee=new EmployeeEntity();
			ee.setEmployee_name(en);
			ee.setEmployee_pass(ep);
			ee.setTitle_id(ti);
			ee.setContact(c);
			// 调用biz中的添加方法
			try {
				int row=eb.updateEmployee(ee,oldname);
				this.queryAllEmployee(request, response);

			} catch (Exception e) {
				e.printStackTrace();
				// 将错误消息存放到作用域
				request.setAttribute("error", "数据操作异常");
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}
		}
	}
	/**
	 * 查询所有员工信息
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	public void queryAllEmployee(HttpServletRequest request, HttpServletResponse response) throws IOException{
		PrintWriter out=response.getWriter();
		//调用biz的查询方法
		try {
			List<EmployeeEntity> employeeList=eb.queryAllEmployee();
			//将集合存放到request
			request.setAttribute("employee", employeeList);
			request.getRequestDispatcher("/permissions/admin_list.jsp").forward(request, response);
		} catch (Exception e) {
			e.getStackTrace();
			out.print("数据操作异常！");
		}
	}
	
	/*public void queryAllEmployee(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		//设置字符集
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		try {
			//从页面获取当前页码
			int page=Integer.parseInt(request.getParameter("txtpage"));
			//调用分页查询方法
			List<EmployeeEntity> employeeList=eb.queryAllEmployee(page);
			//调用总页数方法
			int pages=eb.getEmployeePages();
			//存放到request对象
			request.setAttribute("pages", pages);
			request.setAttribute("employee", employeeList);
			request.getRequestDispatcher("/permissions/admin_list.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}		
	}*/
}
