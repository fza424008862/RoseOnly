package biz;

import java.util.List;

import dao.TypeDao;
import entity.TypeEntity;

public class TypeBiz {
	TypeDao tdao=new TypeDao();
	//打印所有的商品类别
	public List<TypeEntity> inputAll() throws Exception{
		return tdao.inputAll();
	}
	//添加新的商品类别
	public int add(String typeName) throws Exception {
		return tdao.panduan(typeName)?0:tdao.add(typeName);
	}
	//删除商品类别
	public int delete(String typeid) throws Exception{
		return tdao.delete(typeid);
	}
	//修改商品类别
	public int xiugai(String newTypeName,String typeName) throws Exception{
		return tdao.xiugai(newTypeName,typeName);
	}
	//返回商品类别id
	public String cacthId(String typeName) throws Exception {
		return tdao.cacthId(typeName);
	}
	//返回商品类别名称
	public String getName(String id) throws Exception {
		return tdao.getName(id);
	}
}
