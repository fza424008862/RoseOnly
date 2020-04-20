package biz;
import java.util.List;
import dao.CommodityDao;
import entity.CommodityEntity;
public class CommodityBiz {
	CommodityDao cdao=new CommodityDao();
	//打印所有商品
	public List<CommodityEntity> inputAll() throws Exception{
		return cdao.inputAll();
	}
	//添加商品
	public int addShop(CommodityEntity x) throws Exception {
		return cdao.panduan(x.getCommodity_name())?0:cdao.addShop(x);
	}
	//删除商品
	public int deletes(String name) throws Exception {
		return cdao.deletes(name);
	}
	//修改商品
	public int xiugai(CommodityEntity x,String oldname) throws Exception {
		return cdao.xiugai(x,oldname);
	}
	//查单一商品
	public List <CommodityEntity> inputOne(String id) throws Exception{
		return cdao.inputOne(id);
	}
	//返回商品id
	public String huoquId(String shop_name) throws Exception {
		return cdao.huoquId(shop_name);
	}
	public String selectImg(String commodity) throws Exception {
		return cdao.selectimg(commodity);
	}
}
