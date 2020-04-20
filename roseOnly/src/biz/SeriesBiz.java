package biz;

import java.util.List;

import dao.SeriesDao;
import entity.SeriesEntity;

public class SeriesBiz {
	SeriesDao sdao=new SeriesDao();
	//打印所有的商品系列
	public List<SeriesEntity> inputAll() throws Exception{
		return sdao.inputAll();
	}
	//添加新的商品系列
	public int add(String typeName) throws Exception {
		return sdao.panduan(typeName)?0:sdao.add(typeName);
	}
	//删除商品系列
	public int delete(String typeid) throws Exception{
		return sdao.delete(typeid);
	}
	//修改商品系列
	public int xiugai(String newTypeName,String typeName) throws Exception{
		return sdao.xiugai(newTypeName,typeName);
	}
	//返回商品系列id
	public String cacthId(String typeName) throws Exception {
		return sdao.cacthId(typeName);
	}
	//返回商品系列名称
	public String getName(String id) throws Exception {
		return sdao.getName(id);
	}
}
