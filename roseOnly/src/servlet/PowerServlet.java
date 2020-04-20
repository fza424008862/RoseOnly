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
	 * ���Ա��
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void addPower(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String pn=request.getParameter("power_name");
			
		// �����ݷ�װ��ʵ�����
		PowerEntity pe=new PowerEntity();
		pe.setPower_name(pn);
		
		// ����biz�е���ӷ���
		try {
			int row=pb.addPower(pe);
			if(row>0) {
				request.setAttribute("ok", "�����ɹ���");
				this.queryAllPower(request, response);

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
	 *  ɾ��Ȩ��id
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	public void deletePower(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		PrintWriter out=response.getWriter();
		//��ȡҪɾ����employee_id
		String power_id=request.getParameter("power_id");
		
		try {
			pb.deletePower(power_id);
			this.queryAllPower(request, response);
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
			out.print("���ݲ����쳣��");
		}
		request.getRequestDispatcher("/permissions/right_list.jsp").forward(request, response);
	}
	
	/**
	 * �޸Ľ�ɫ
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
				
			// �����ݷ�װ��ʵ�����
			PowerEntity pe=new PowerEntity();
			pe.setPower_name(pn);
			// ����biz�е���ӷ���
			try {
				int row=pb.updatePower(pe,oldname);
				this.queryAllPower(request, response);

			} catch (Exception e) {
				e.printStackTrace();
				// ��������Ϣ��ŵ�������
				request.setAttribute("error", "���ݲ����쳣");
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}
		}	
	}
	
	/**
	 * ��ѯ����Ȩ����Ϣ
	 * @param request
	 * @param response
	 * @throws IOException
	 * @throws ServletException
	 */
	public void queryAllPower(HttpServletRequest request, HttpServletResponse response) throws IOException{
		PrintWriter out=response.getWriter();
		//����biz�Ĳ�ѯ����
		try {
			List<PowerEntity> powerList=pb.queryAllPower();
			//�����ϴ�ŵ�request
			request.setAttribute("power", powerList);
			request.getRequestDispatcher("/permissions/right_list.jsp").forward(request, response);
		} catch (Exception e) {
			e.getStackTrace();
			out.print("���ݲ����쳣��");
		}
	}
}
