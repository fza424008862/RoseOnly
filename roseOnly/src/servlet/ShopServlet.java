package servlet; 
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import biz.CommodityBiz;
import biz.CommodityTypeBiz;
import biz.ImgesBiz;
import biz.SeriesBiz;
import biz.SpecificationsBiz;
import biz.TypeBiz;
import entity.CommodityEntity;
import entity.ImgesEntity;
/**
 * Servlet implementation class ShopServlet
 */
@WebServlet("/ShopServlet")
@MultipartConfig
public class ShopServlet extends BaseServlet {
	TypeBiz tbiz=new TypeBiz();//���biz
	CommodityTypeBiz ctbiz=new CommodityTypeBiz();//����biz
	SeriesBiz sbiz=new SeriesBiz();//ϵ��biz
	SpecificationsBiz specbiz=new SpecificationsBiz();//���biz
	CommodityBiz cbiz=new CommodityBiz();
	TypeServlet tslet=new TypeServlet();
	ImgesBiz imgbiz=new ImgesBiz();
	//�����Ʒ
	public void addShop(HttpServletRequest request,HttpServletResponse response) throws Exception {
		PrintWriter out=response.getWriter();
		String shopName=request.getParameter("shop_name");
		String shopType=request.getParameter("shop_type");
		String shopLx=request.getParameter("shop_lx");
		String shopSeries=request.getParameter("shop_series");
		String shopSpecifications=request.getParameter("shop_specifications");
		double price=Double.valueOf(request.getParameter("shop_price"));
		int number=Integer.parseInt(request.getParameter("shop_number"));
		CommodityEntity x=new CommodityEntity();
		x.setCommodity_name(shopName);
		x.setCommodity_type_id(ctbiz.cacthId(shopLx));
		x.setSeries_id(sbiz.cacthId(shopSeries));
		x.setType_id(tbiz.cacthId(shopType));
		x.setSpecifications_id(specbiz.cacthId(shopSpecifications));
		x.setGoods_stock_price(price);
		x.setPrice(price);
		x.setDescribe_one(shopType+"-"+shopSeries);
		x.setDescribe_two(shopLx+" "+shopSpecifications);
		x.setTotal_number(number);
		x.setSurplus_number(number);
		try {
			cbiz.addShop(x);
			String id=cbiz.huoquId(shopName);
			request.setAttribute("shop_id", id);
			this.sc(request, response);
			this.inputAll(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "��������");
			/*request.getRequestDispatcher("error.jsp").forward(request, response);*/
		}
	}
	//��ѯ������Ʒ��ʾ����
	public void inputAll(HttpServletRequest request,HttpServletResponse response) throws Exception {
		PrintWriter out=response.getWriter();
		//����biz����
		try {
			List<CommodityEntity> list=cbiz.inputAll();
			request.setAttribute("shopList", list);
			if(!request.getParameter("choose").equals("qiantai")) {
				request.getRequestDispatcher("goods/Shop_hotai_shouye.jsp").forward(request, response);
			}else {
				List<ImgesEntity> list2=imgbiz.houquImg();
				request.setAttribute("imgList", list2);
				request.getRequestDispatcher("ChooceShop.jsp").forward(request, response);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "��������");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}
	//ɾ����Ʒ
	public void deletes(HttpServletRequest request,HttpServletResponse response) throws Exception {
		PrintWriter out=response.getWriter();
		
		if(request.getParameter("one")==null) {
			String array2=request.getParameter("det");
			String[] det=array2.split(",");
			for(int i=0;i<det.length;i++) {
				try {
					cbiz.deletes(det[i]);
				}catch(Exception e) {
					e.printStackTrace();
					request.setAttribute("error", "��������");
					request.getRequestDispatcher("error.jsp").forward(request, response);
				}
			}
			this.inputAll(request, response);
		}else if(request.getParameter("one")!=null){
			String delete =request.getParameter("one");
			try {
				cbiz.deletes(delete);
			}catch(Exception e) {
				e.printStackTrace();
				request.setAttribute("error", "��������");
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}
			this.inputAll(request, response);
		}
	}
	//�༭��Ʒ
	public void update(HttpServletRequest request,HttpServletResponse response) throws Exception {
		PrintWriter out=response.getWriter();
		if(request.getParameter("choose").equals("bj")) {
			request.setAttribute("choose", "bj");
			request.setAttribute("name",request.getParameter("name"));
			request.setAttribute("type",tbiz.getName(request.getParameter("typeid")));
			request.setAttribute("comType",ctbiz.getName(request.getParameter("comType")));
			request.setAttribute("xl",sbiz.getName(request.getParameter("xl")));
			request.setAttribute("gg",specbiz.getName(request.getParameter("gg")));
			request.setAttribute("price",Double.valueOf(request.getParameter("price")));
			request.setAttribute("number",Integer.parseInt(request.getParameter("number")));
			tslet.inputAll(request, response);
		}else if(request.getParameter("choose").equals("bc")) {
			String oldname=request.getParameter("oldname");
			String shopName=request.getParameter("name");
			String shopType=request.getParameter("type");
			String shopLx=request.getParameter("lx");
			String shopSeries=request.getParameter("xl");
			String shopSpecifications=request.getParameter("gg");
			double price=Double.valueOf(request.getParameter("price"));
			int number=Integer.parseInt(request.getParameter("number"));
			CommodityEntity x=new CommodityEntity();
			x.setCommodity_name(shopName);
			x.setCommodity_type_id(ctbiz.cacthId(shopLx));
			x.setSeries_id(sbiz.cacthId(shopSeries));
			x.setType_id(tbiz.cacthId(shopType));
			x.setSpecifications_id(specbiz.cacthId(shopSpecifications));
			x.setGoods_stock_price(price);
			x.setPrice(price);
			x.setTotal_number(number);
			x.setSurplus_number(number);
			try {
				cbiz.xiugai(x,oldname);
				this.inputAll(request, response);
			}catch(Exception e) {
				e.printStackTrace();
				request.setAttribute("error", "��������");
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}
		}
	}
	//��ʾ��Ʒ����
	public void inputOne(HttpServletRequest request,HttpServletResponse response) throws Exception {
		String id;
		PrintWriter out=response.getWriter();
		if(request.getParameter("id")==null) {
			if((String)request.getAttribute("sid")==null) {
				if(request.getParameter("shopId")==null) {
					id=(String) request.getAttribute("id");
				}else {
					id=request.getParameter("shopId");
				}
			}else {
				id=(String) request.getAttribute("sid");
			}
		}else {
			id=request.getParameter("id");
		}
		try {
			List<CommodityEntity> list=cbiz.inputOne(id);
			List<ImgesEntity> list2=imgbiz.getImg(id);
			request.setAttribute("imgs", list2);
			request.setAttribute("shop",list);
			
			request.getRequestDispatcher("ShopDetails.jsp").forward(request, response);
		}catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "��������");
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
		
	}
	//�����ƷͼƬ
	public void sc(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//��ȡ���еı�Ԫ�ض���
		
		Collection<Part> ps=request.getParts();
		
		//ѭ���ж�ÿһ��ps�Ƿ�Ϊfile����
		for(Part p:ps) {
			//getContentType()���ڻ�ȡPart���������
			if(p.getContentType()!=null) {
				//ȡ�ļ�����
				String img_type=request.getParameter("img_type");
				String shopid=(String) request.getAttribute("shop_id");
				String name=p.getSubmittedFileName();
				ImgesEntity img=new ImgesEntity();
				img.setCommodity_id(shopid);
				img.setImges_url(name);
				if(img_type.equals("��ͼ")) {
					img.setImges_type(1);
				}else if(img_type.equals("��ͼ")) {
					img.setImges_type(2);
				}
				imgbiz.addImg(img);
				
				
			}
		}
		
		//��ȡ���ķ�fileԪ��ֵ
		String username=request.getParameter("txtName");
		
		response.getWriter().print(username+"����Ĳ�����ɣ�");
	}
	//��ѯ����Ʒ���ͼƬ
	public void inputImg(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
	}
}
