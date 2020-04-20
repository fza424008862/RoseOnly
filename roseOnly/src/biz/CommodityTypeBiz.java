package biz;

import java.util.List;

import dao.CommodityTypeDao;
import entity.CommodityTypeEntity;

public class CommodityTypeBiz {
	CommodityTypeDao ctdao=new CommodityTypeDao();
	//打印所有的商品类型
	public List<CommodityTypeEntity> inputAll() throws Exception{
		return ctdao.inputAll();
	}
	//添加新的商品类型
	public int add(String typeName) throws Exception {
		return ctdao.panduan(typeName)?0:ctdao.add(typeName);
	}
	//删除商品类型
	public int delete(String typeid) throws Exception{
		return ctdao.delete(typeid);
	}
	//修改商品类型
	public int xiugai(String newTypeName,String typeName) throws Exception{
		return ctdao.xiugai(newTypeName,typeName);
	}
	//返回商品类型id
	public String cacthId(String typeName) throws Exception {
		return ctdao.cacthId(typeName);
	}
	//返回商品类型名称
	public String getName(String id) throws Exception {
		return ctdao.getName(id);
	}
}
