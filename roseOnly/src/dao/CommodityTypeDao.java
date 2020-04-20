package dao;

import java.util.List;

import entity.CommodityTypeEntity;

public class CommodityTypeDao extends BaseDao{
	//打印所有的商品类型
	public List<CommodityTypeEntity> inputAll() throws Exception{
		String sql="select * from commoditytype";
		List<CommodityTypeEntity> lists=this.query(sql, new CommodityTypeFillDao(), null);
		return lists;
	}
	//添加新的商品类型
	public int add(String typeName) throws Exception {
		String sql="insert into commoditytype values(?,?,1)";
		return this.update(sql, this.getId(),typeName);
	}
	//自增ID
	public String getId() throws Exception {
		String sql="select max(commodity_type_id) from commoditytype";
		String id = String.valueOf(this.queryOne(sql, null));
		if(id.equals("null")) {
			id = "ct001";
		}else {
			int i = Integer.parseInt(id.substring(2))+1;
			if(i<10) {
				id = "ct00"+i;
			}else if(i<100) {
				id = "ct0"+i;
			}else  {
				id = "ct"+i;
			}
		}
		return id;
	}
	//判断添加的名字是否存在
	public boolean panduan(String typeName) throws Exception {
		String sql="select * from commoditytype where commodity_type_name=?";
		//false并不存在 true存在
		return this.query(sql, new CommodityTypeFillDao(), typeName).size()==0?false:true;
	}
	//删除商品类型
	public int delete(String typeid) throws Exception{
		String sql="delete from commoditytype where commodity_type_id=?";
		return this.update(sql, typeid);
	}
	//修改商品类型
	public int xiugai(String newTypeName,String typeName) throws Exception{
		String sql="update commoditytype set commodity_type_name=? where commodity_type_name=?";
		return this.update(sql,newTypeName, typeName);
	}
	//返回商品类型id
	public String cacthId(String typeName) throws Exception {
		String sql="select commodity_type_id from commoditytype where commodity_type_name=?";
		return (String)this.queryOne(sql, typeName); 
	}
	//返回商品类型名称
	public String getName(String id) throws Exception {
		String sql="select commodity_type_name from commoditytype where commodity_type_id=?";
		return (String)this.queryOne(sql, id);
	}
}
