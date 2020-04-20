package dao;

import java.util.List;

import entity.SpecificationsEntity;

public class SpecificationsDao extends BaseDao{
	//打印所有的商品规格
	public List<SpecificationsEntity> inputAll() throws Exception{
		String sql="select * from specifications";
		List<SpecificationsEntity> lists=this.query(sql, new SpecificationsFillDao(), null);
		return lists;
	}
	//添加新的商品规格
	public int add(String typeName) throws Exception {
		String sql="insert into specifications values(?,?,1)";
		return this.update(sql, this.getId(),typeName);
	}
	//自增ID
	public String getId() throws Exception {
		String sql="select max(specifications_id) from specifications";
		String id = String.valueOf(this.queryOne(sql, null));
		if(id.equals("null")) {
			id = "sp001";
		}else {
			int i = Integer.parseInt(id.substring(2))+1;
			if(i<10) {
				id = "sp00"+i;
			}else if(i<100) {
				id = "sp0"+i;
			}else  {
				id = "sp"+i;
			}
		}
		return id;
	}
	//判断添加的名字是否存在
	public boolean panduan(String typeName) throws Exception {
		String sql="select * from specifications where specifications_name=?";
		//false并不存在 true存在
		return this.query(sql, new CommodityTypeFillDao(), typeName).size()==0?false:true;
	}
	//删除商品规格
	public int delete(String typeid) throws Exception{
		String sql="delete from specifications where specifications_id=?";
		return this.update(sql, typeid);
	}
	//修改商品规格
	public int xiugai(String newTypeName,String typeName) throws Exception{
		String sql="update specifications set specifications_name=? where specifications_name=?";
		return this.update(sql,newTypeName, typeName);
	}
	//返回商品规格id
	public String cacthId(String typeName) throws Exception {
		String sql="select specifications_id from specifications where specifications_name=?";
		return (String)this.queryOne(sql, typeName); 
	}
	//返回商品规格名称
	public String getName(String id) throws Exception {
		String sql="select specifications_name from specifications where specifications_id=?";
		return (String)this.queryOne(sql, id);
	}
}
