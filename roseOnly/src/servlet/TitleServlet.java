package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import biz.TitleBiz;
import entity.EmployeeEntity;
import entity.TitleEntity;

/**
 * Servlet implementation class TitleServlet
 */
@WebServlet("/TitleServlet")
public class TitleServlet extends BaseServlet {
	TitleBiz tb=new TitleBiz();
	
	/**
	 * 添加角色
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void addTitle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String tn=request.getParameter("title_name");
		
		// 将数据封装到实体对象
		TitleEntity te=new TitleEntity();
		te.setTitle_name(tn);
		
		// 调用biz中的添加方法
		try {
			int row=tb.addTitle(te);
			if(row>0) {
				request.setAttribute("ok！", "添加成功！");
				this.queryAllTitle(request, response);
			} else {
				request.setAttribute("error", "添加失败。");
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
			// 将错误消息存放到作用域
			request.setAttribute("error", "操作有误！");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}
	
	/**
	 * 删除角色id
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	public void deleteTitle(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		PrintWriter out=response.getWriter();
		//获取要删除的employee_id
		String title_id=request.getParameter("title_id");
		
		try {
			tb.deleteTitle(title_id);
			this.queryAllTitle(request, response);
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
	public void deleteAllTitle(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		PrintWriter out=response.getWriter();
		String array2=request.getParameter("det");
		String[] det=array2.split(",");
		try {
			List<TitleEntity> titleList=tb.queryAllTitle();
			for(int i=0;i<det.length;i++) {
				for(int j=0;j<titleList.size();j++) {
					if(det[i].equals(titleList.get(j).getTitle_id()));
						titleList.remove(j);
						break;
				}
			}
			request.setAttribute("title", titleList);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "操作有误！");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
		this.queryAllTitle(request,response);
	}
	
	/**
	 * 修改角色
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException 
	 */
	public void updateTitle(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException {
		PrintWriter out=response.getWriter();
		String choose=request.getParameter("choose");
		if(choose.equals("edit")) {
			request.setAttribute("title_name", request.getParameter("title_name"));
			request.setAttribute("choose", request.getParameter("choose"));
			request.getRequestDispatcher("/permissions/role_edit.jsp").forward(request, response);
		}else if(choose.equals("Preservation")) {
			String oldname=request.getParameter("oldetitle_name");
			String tn=request.getParameter("title_name");
			
			// 将数据封装到实体对象
			TitleEntity te=new TitleEntity();
			te.setTitle_name(tn);
			// 调用biz中的添加方法
			try {
				int row=tb.updateTitle(te,oldname);
				this.queryAllTitle(request, response);

			} catch (Exception e) {
				e.printStackTrace();
				// 将错误消息存放到作用域
				request.setAttribute("error", "数据操作异常");
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}
		}	
	}
	
	/**
	 * 查询所有角色信息
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void queryAllTitle(HttpServletRequest request, HttpServletResponse response) throws IOException{
		PrintWriter out=response.getWriter();
		String txt = request.getParameter("pageTxt");
		//调用biz的查询方法
		try {
			List<TitleEntity> titleList=tb.queryAllTitle();
			//将集合存放到request
			request.setAttribute("title", titleList);
			if(txt.equals("admin")) {
				request.getRequestDispatcher("/permissions/admin_edit.jsp").forward(request, response);
			}else {
				request.getRequestDispatcher("/permissions/role_list.jsp").forward(request, response);
			}
		} catch (Exception e) {
			e.getStackTrace();
			out.print("数据操作异常！");
		}	
	}	
}
