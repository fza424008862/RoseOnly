package biz;
import java.util.List;
import dao.CommodityDao;
import entity.CommodityEntity;
public class CommodityBiz {
	CommodityDao cdao=new CommodityDao();
	//��ӡ������Ʒ
	public List<CommodityEntity> inputAll() throws Exception{
		return cdao.inputAll();
	}
	//�����Ʒ
	public int addShop(CommodityEntity x) throws Exception {
		return cdao.panduan(x.getCommodity_name())?0:cdao.addShop(x);
	}
	//ɾ����Ʒ
	public int deletes(String name) throws Exception {
		return cdao.deletes(name);
	}
	//�޸���Ʒ
	public int xiugai(CommodityEntity x,String oldname) throws Exception {
		return cdao.xiugai(x,oldname);
	}
	//�鵥һ��Ʒ
	public List <CommodityEntity> inputOne(String id) throws Exception{
		return cdao.inputOne(id);
	}
	//������Ʒid
	public String huoquId(String shop_name) throws Exception {
		return cdao.huoquId(shop_name);
	}
	public String selectImg(String commodity) throws Exception {
		return cdao.selectimg(commodity);
	}
}
