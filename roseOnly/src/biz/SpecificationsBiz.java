package biz;

import java.util.List;

import dao.SpecificationsDao;
import entity.SpecificationsEntity;

public class SpecificationsBiz {
	SpecificationsDao sdao=new SpecificationsDao();
	//打印所有的商品规格
	public List<SpecificationsEntity> inputAll() throws Exception{
		return sdao.inputAll();
	}
	//添加新的商品规格
	public int add(String typeName) throws Exception {
		return sdao.panduan(typeName)?0:sdao.add(typeName);
	}
	//删除商品规格
	public int delete(String typeid) throws Exception{
		return sdao.delete(typeid);
	}
	//修改商品规格
	public int xiugai(String newTypeName,String typeName) throws Exception{
		return sdao.xiugai(newTypeName,typeName);
	}
	//返回商品规格id
	public String cacthId(String typeName) throws Exception {
		return sdao.cacthId(typeName);
	}
	//返回商品规格 名称
	public String getName(String id) throws Exception {
		return sdao.getName(id);
	}
}
