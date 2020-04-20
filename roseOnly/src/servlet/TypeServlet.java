package servlet;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import biz.CommodityTypeBiz;
import biz.SeriesBiz;
import biz.SpecificationsBiz;
import biz.TypeBiz;
import entity.CommodityTypeEntity;
import entity.SeriesEntity;
import entity.SpecificationsEntity;
import entity.TypeEntity;
/**
 * Servlet implementation class TypeServlet
 */
@WebServlet("/TypeServlet")
public class TypeServlet extends BaseServlet {
	TypeBiz tbiz=new TypeBiz();//���biz
	CommodityTypeBiz ctbiz=new CommodityTypeBiz();//����biz
	SeriesBiz sbiz=new SeriesBiz();//ϵ��biz
	SpecificationsBiz specbiz=new SpecificationsBiz();//���biz
	//��ӡ���з�����Ϣ
	public void inputAll(HttpServletRequest request,HttpServletResponse response) throws Exception {
		PrintWriter out=response.getWriter();
		String x=request.getParameter("x");
		try {
			List<TypeEntity> lists=tbiz.inputAll();
			out.print(lists.size());
			List<CommodityTypeEntity> lists2=ctbiz.inputAll();
			out.print(lists2.size());
			List<SeriesEntity> lists3=sbiz.inputAll();
			out.print(lists3.size());
			List<SpecificationsEntity> lists4=specbiz.inputAll();
			out.print(lists4.size());
			request.getSession().setAttribute("typeAll", lists);
			request.getSession().setAttribute("commodityTypeAll", lists2);
			request.getSession().setAttribute("seriesAll", lists3);
			request.getSession().setAttribute("specificationsAll", lists4);
			if(x.equals("shop")) {
				request.getRequestDispatcher("goods/Shop_hotai_addShop.jsp").forward(request, response);
			}else if(x.equals("qiantai")){
				request.getRequestDispatcher("wedding_roseonly.jsp").forward(request, response);
			}
			else {
				request.getRequestDispatcher("goods/Shop_hotai_Type.jsp").forward(request, response);
			}
			
		}catch(Exception e) {
			out.print("���ݲ����쳣!");
		}
		
	}
	//��Ӷ�Ӧ�ķ���
	public void addClassification(HttpServletRequest request,HttpServletResponse response) throws Exception {
		PrintWriter out=response.getWriter();
		String classificationName=request.getParameter("classification_name");
		String classification=request.getParameter("classification");
		boolean x=classification.equals("--δѡ��--")?false:true;
		String message=null;
		String color=null;
		try {
			if(x==true) {
				if(classification.equals("��Ʒ���")) {
					int row=tbiz.add(classificationName);
					if(row>0) {
						message="��ӳɹ�!";
						color="white";
					}else {
						message="�÷��������Ѵ��ڣ�";
						color="red";
					}
				}else if(classification.equals("��Ʒ����")) {
					int row=ctbiz.add(classificationName);
					if(row>0) {
						message="��ӳɹ�!";
						color="white";
						
					}else {
						message="�÷��������Ѵ��ڣ�";
						color="red";
					}
				}else if(classification.equals("��Ʒϵ��")) {
					int row=sbiz.add(classificationName);
					if(row>0) {
						message="��ӳɹ�!";
						color="white";
						
					}else {
						message="�÷��������Ѵ��ڣ�";
						color="red";
					}
				}else if(classification.equals("��Ʒ���")) {
					int row=specbiz.add(classificationName);
					if(row>0) {
						message="��ӳɹ�!";
						color="white";
						
					}else {
						message="�÷��������Ѵ��ڣ�";
						color="red";
					}
				}
			}else {
				message="��ѡ�����";
				color="red";
			}
			request.setAttribute("message", message);
			request.setAttribute("color", color);
			request.getRequestDispatcher("goods/Shop_hotai_addType.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "��������");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
		
	}
	//����ɾ��
	public void deleteOneClassification(HttpServletRequest request,HttpServletResponse response) throws Exception {
		PrintWriter out=response.getWriter();
		String classification=request.getParameter("classification");
		String deleteid=request.getParameter("delete");
		try {
			if(classification.equals("��Ʒ���")) {
				tbiz.delete(deleteid);
				this.inputAll(request, response);
			}else if(classification.equals("��Ʒ����")) {
				ctbiz.delete(deleteid);
				this.inputAll(request, response);
			}else if(classification.equals("��Ʒϵ��")) {
				sbiz.delete(deleteid);
				this.inputAll(request, response);
			}else if(classification.equals("��Ʒ���")) {
				specbiz.delete(deleteid);
				this.inputAll(request, response);
			}
		}catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "��������");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
		
	}
	//ɾ�����()
	public void deletesClassification(HttpServletRequest request,HttpServletResponse response) throws Exception {
		PrintWriter out=response.getWriter();
		String array2=request.getParameter("det");
		String[] det=array2.split(",");
		for(int i=0;i<det.length;i++) {
			out.print(det[i]+"<br/>");
			String[] sc=det[i].split(";");
			try {
				if(sc[0].equals("��Ʒ���")) {
					tbiz.delete(sc[1]);
				}else if(sc[0].equals("��Ʒ����")) {
					ctbiz.delete(sc[1]);
				}else if(sc[0].equals("��Ʒϵ��")) {
					sbiz.delete(sc[1]);
				}else if(sc[0].equals("��Ʒ���")) {
					specbiz.delete(sc[1]);
				}
			}catch(Exception e) {
				e.printStackTrace();
				request.setAttribute("error", "��������");
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}
		}
		this.inputAll(request, response);
	}
	//�༭�޸�����
	public void updateClassification(HttpServletRequest request,HttpServletResponse response) throws Exception {
		PrintWriter out=response.getWriter();
		String choose=request.getParameter("choose");
		String type=request.getParameter("type");
		String typeName=request.getParameter("typename");
		if(choose.equals("edit")) {
			request.setAttribute("type",type);
			request.setAttribute("typeName",typeName);
			request.getRequestDispatcher("goods/Shop_hotai_addType.jsp").forward(request, response);
		}else if(choose.equals("Preservation")) {
			String newTypeName=request.getParameter("newTypeName");
			try {
				if(type.equals("��Ʒ���")) {
					tbiz.xiugai(newTypeName,typeName);
				}else if(type.equals("��Ʒ����")) {
					ctbiz.xiugai(newTypeName,typeName);
				}else if(type.equals("��Ʒϵ��")) {
					sbiz.xiugai(newTypeName,typeName);
				}else if(type.equals("��Ʒ���")) {
					specbiz.xiugai(newTypeName,typeName);
				}
				this.inputAll(request, response);
			}catch(Exception e) {
				e.printStackTrace();
				request.setAttribute("error", "��������");
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}
		}
	}

}
