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
	TypeBiz tbiz=new TypeBiz();//类别biz
	CommodityTypeBiz ctbiz=new CommodityTypeBiz();//类型biz
	SeriesBiz sbiz=new SeriesBiz();//系列biz
	SpecificationsBiz specbiz=new SpecificationsBiz();//规格biz
	//打印所有分类信息
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
			out.print("数据操作异常!");
		}
		
	}
	//添加对应的分类
	public void addClassification(HttpServletRequest request,HttpServletResponse response) throws Exception {
		PrintWriter out=response.getWriter();
		String classificationName=request.getParameter("classification_name");
		String classification=request.getParameter("classification");
		boolean x=classification.equals("--未选择--")?false:true;
		String message=null;
		String color=null;
		try {
			if(x==true) {
				if(classification.equals("商品类别")) {
					int row=tbiz.add(classificationName);
					if(row>0) {
						message="添加成功!";
						color="white";
					}else {
						message="该分类名称已存在！";
						color="red";
					}
				}else if(classification.equals("商品类型")) {
					int row=ctbiz.add(classificationName);
					if(row>0) {
						message="添加成功!";
						color="white";
						
					}else {
						message="该分类名称已存在！";
						color="red";
					}
				}else if(classification.equals("商品系列")) {
					int row=sbiz.add(classificationName);
					if(row>0) {
						message="添加成功!";
						color="white";
						
					}else {
						message="该分类名称已存在！";
						color="red";
					}
				}else if(classification.equals("商品规格")) {
					int row=specbiz.add(classificationName);
					if(row>0) {
						message="添加成功!";
						color="white";
						
					}else {
						message="该分类名称已存在！";
						color="red";
					}
				}
			}else {
				message="请选择分类";
				color="red";
			}
			request.setAttribute("message", message);
			request.setAttribute("color", color);
			request.getRequestDispatcher("goods/Shop_hotai_addType.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "操作有误！");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
		
	}
	//单个删除
	public void deleteOneClassification(HttpServletRequest request,HttpServletResponse response) throws Exception {
		PrintWriter out=response.getWriter();
		String classification=request.getParameter("classification");
		String deleteid=request.getParameter("delete");
		try {
			if(classification.equals("商品类别")) {
				tbiz.delete(deleteid);
				this.inputAll(request, response);
			}else if(classification.equals("商品类型")) {
				ctbiz.delete(deleteid);
				this.inputAll(request, response);
			}else if(classification.equals("商品系列")) {
				sbiz.delete(deleteid);
				this.inputAll(request, response);
			}else if(classification.equals("商品规格")) {
				specbiz.delete(deleteid);
				this.inputAll(request, response);
			}
		}catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "操作有误！");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
		
	}
	//删除多个()
	public void deletesClassification(HttpServletRequest request,HttpServletResponse response) throws Exception {
		PrintWriter out=response.getWriter();
		String array2=request.getParameter("det");
		String[] det=array2.split(",");
		for(int i=0;i<det.length;i++) {
			out.print(det[i]+"<br/>");
			String[] sc=det[i].split(";");
			try {
				if(sc[0].equals("商品类别")) {
					tbiz.delete(sc[1]);
				}else if(sc[0].equals("商品类型")) {
					ctbiz.delete(sc[1]);
				}else if(sc[0].equals("商品系列")) {
					sbiz.delete(sc[1]);
				}else if(sc[0].equals("商品规格")) {
					specbiz.delete(sc[1]);
				}
			}catch(Exception e) {
				e.printStackTrace();
				request.setAttribute("error", "操作有误！");
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}
		}
		this.inputAll(request, response);
	}
	//编辑修改内容
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
				if(type.equals("商品类别")) {
					tbiz.xiugai(newTypeName,typeName);
				}else if(type.equals("商品类型")) {
					ctbiz.xiugai(newTypeName,typeName);
				}else if(type.equals("商品系列")) {
					sbiz.xiugai(newTypeName,typeName);
				}else if(type.equals("商品规格")) {
					specbiz.xiugai(newTypeName,typeName);
				}
				this.inputAll(request, response);
			}catch(Exception e) {
				e.printStackTrace();
				request.setAttribute("error", "操作有误！");
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}
		}
	}

}
