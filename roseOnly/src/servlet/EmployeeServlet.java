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
	 * ��¼����
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	public void enterEmployee(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		// ȡֵ
		String n = request.getParameter("employee_name");
		String p = request.getParameter("employee_pass");
		// �����ݷ�װ��ʵ�����
		EmployeeEntity ee = new EmployeeEntity();
		ee.setEmployee_name(n);
		ee.setEmployee_pass(p);
		// ����Biz��¼����
		try {
			int row = eb.enter(ee);
			if (row > 0) {
				request.setAttribute("ok", "��¼�ɹ���");
				request.getRequestDispatcher("/system/default.jsp").forward(request, response);
			} else {
				// ��¼ʧ�ܣ�
				request.setAttribute("error", "�û������������");
				request.getRequestDispatcher("error.jsp").forward(request, response);

			}

		} catch (Exception e) {
			e.printStackTrace();
			// ��������Ϣ��ŵ�������
			request.setAttribute("error", "���ݲ����쳣");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}
	
	/**
	 * ���Ա��
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
			
		// �����ݷ�װ��ʵ�����
		EmployeeEntity ee=new EmployeeEntity();
		ee.setEmployee_name(en);
		ee.setEmployee_pass(ep);
		ee.setTitle_id(ti);
		ee.setContact(c);
		
		// ����biz�е���ӷ���
		try {
			int row=eb.addEmployee(ee);
			if(row>0) {
				request.setAttribute("ok", "�����ɹ���");
				this.queryAllEmployee(request, response);

			} else {
				request.setAttribute("error", "����ʧ�ܡ�");
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}

		} catch (Exception e) {
			e.printStackTrace();
			// ��������Ϣ��ŵ�������
			request.setAttribute("error", "���ݲ����쳣");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}
	
	/**
	 * ɾ��Ա��id
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public void deleteEmployee(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		PrintWriter out=response.getWriter();
		//��ȡҪɾ����employee_id
		String employee_id=request.getParameter("employee_id");
		
		try {
			eb.deleteEmployee(employee_id);
			this.queryAllEmployee(request, response);
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
			out.print("���ݲ����쳣��");
		}
		request.getRequestDispatcher("/permissions/admin_list.jsp").forward(request, response);
	}
	
	/**
	 * �޸�Ա��
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
				
			// �����ݷ�װ��ʵ�����
			EmployeeEntity ee=new EmployeeEntity();
			ee.setEmployee_name(en);
			ee.setEmployee_pass(ep);
			ee.setTitle_id(ti);
			ee.setContact(c);
			// ����biz�е���ӷ���
			try {
				int row=eb.updateEmployee(ee,oldname);
				this.queryAllEmployee(request, response);

			} catch (Exception e) {
				e.printStackTrace();
				// ��������Ϣ��ŵ�������
				request.setAttribute("error", "���ݲ����쳣");
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}
		}
	}
	/**
	 * ��ѯ����Ա����Ϣ
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	public void queryAllEmployee(HttpServletRequest request, HttpServletResponse response) throws IOException{
		PrintWriter out=response.getWriter();
		//����biz�Ĳ�ѯ����
		try {
			List<EmployeeEntity> employeeList=eb.queryAllEmployee();
			//�����ϴ�ŵ�request
			request.setAttribute("employee", employeeList);
			request.getRequestDispatcher("/permissions/admin_list.jsp").forward(request, response);
		} catch (Exception e) {
			e.getStackTrace();
			out.print("���ݲ����쳣��");
		}
	}
	
	/*public void queryAllEmployee(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		//�����ַ���
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		try {
			//��ҳ���ȡ��ǰҳ��
			int page=Integer.parseInt(request.getParameter("txtpage"));
			//���÷�ҳ��ѯ����
			List<EmployeeEntity> employeeList=eb.queryAllEmployee(page);
			//������ҳ������
			int pages=eb.getEmployeePages();
			//��ŵ�request����
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
