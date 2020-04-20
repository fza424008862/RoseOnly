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
	 * ��ӽ�ɫ
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void addTitle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String tn=request.getParameter("title_name");
		
		// �����ݷ�װ��ʵ�����
		TitleEntity te=new TitleEntity();
		te.setTitle_name(tn);
		
		// ����biz�е���ӷ���
		try {
			int row=tb.addTitle(te);
			if(row>0) {
				request.setAttribute("ok��", "��ӳɹ���");
				this.queryAllTitle(request, response);
			} else {
				request.setAttribute("error", "���ʧ�ܡ�");
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
			// ��������Ϣ��ŵ�������
			request.setAttribute("error", "��������");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}
	
	/**
	 * ɾ����ɫid
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	public void deleteTitle(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		PrintWriter out=response.getWriter();
		//��ȡҪɾ����employee_id
		String title_id=request.getParameter("title_id");
		
		try {
			tb.deleteTitle(title_id);
			this.queryAllTitle(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "��������");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}	
	}
	
	/**
	 * ����ɾ��
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
			request.setAttribute("error", "��������");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
		this.queryAllTitle(request,response);
	}
	
	/**
	 * �޸Ľ�ɫ
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
			
			// �����ݷ�װ��ʵ�����
			TitleEntity te=new TitleEntity();
			te.setTitle_name(tn);
			// ����biz�е���ӷ���
			try {
				int row=tb.updateTitle(te,oldname);
				this.queryAllTitle(request, response);

			} catch (Exception e) {
				e.printStackTrace();
				// ��������Ϣ��ŵ�������
				request.setAttribute("error", "���ݲ����쳣");
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}
		}	
	}
	
	/**
	 * ��ѯ���н�ɫ��Ϣ
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void queryAllTitle(HttpServletRequest request, HttpServletResponse response) throws IOException{
		PrintWriter out=response.getWriter();
		String txt = request.getParameter("pageTxt");
		//����biz�Ĳ�ѯ����
		try {
			List<TitleEntity> titleList=tb.queryAllTitle();
			//�����ϴ�ŵ�request
			request.setAttribute("title", titleList);
			if(txt.equals("admin")) {
				request.getRequestDispatcher("/permissions/admin_edit.jsp").forward(request, response);
			}else {
				request.getRequestDispatcher("/permissions/role_list.jsp").forward(request, response);
			}
		} catch (Exception e) {
			e.getStackTrace();
			out.print("���ݲ����쳣��");
		}	
	}	
}
