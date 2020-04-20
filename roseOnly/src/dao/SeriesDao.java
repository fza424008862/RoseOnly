package dao;

import java.util.List;

import entity.SeriesEntity;

public class SeriesDao extends BaseDao{
	//打印所有的商品系列
	public List<SeriesEntity> inputAll() throws Exception{
		String sql="select * from series";
		List<SeriesEntity> lists=this.query(sql, new SeriesFillDao(), null);
		return lists;
	}
	//添加新的商品系列
	public int add(String typeName) throws Exception {
		String sql="insert into series values(?,?,1)";
		return this.update(sql, this.getId(),typeName);
	}
	//自增ID
	public String getId() throws Exception {
		String sql="select max(series_id) from series";
		String id = String.valueOf(this.queryOne(sql, null));
		if(id.equals("null")) {
			id = "se001";
		}else {
			int i = Integer.parseInt(id.substring(2))+1;
			if(i<10) {
				id = "se00"+i;
			}else if(i<100) {
				id = "se0"+i;
			}else  {
				id = "se"+i;
			}
		}
		return id;
	}
	//判断添加的名字是否存在
	public boolean panduan(String typeName) throws Exception {
		String sql="select * from series where series_name=?";
		//false并不存在 true存在
		return this.query(sql, new CommodityTypeFillDao(), typeName).size()==0?false:true;
	}
	//删除商品系列
	public int delete(String typeid) throws Exception{
		String sql="delete from series where series_id=?";
		return this.update(sql, typeid);
	}
	//修改商品系列
	public int xiugai(String newTypeName,String typeName) throws Exception{
		String sql="update series set series_name=? where series_name=?";
		return this.update(sql,newTypeName, typeName);
	}
	//返回商品系列id
	public String cacthId(String typeName) throws Exception {
		String sql="select series_id from series where series_name=?";
		return (String)this.queryOne(sql, typeName); 
	}
	//返回商品类别名称
	public String getName(String id) throws Exception {
		String sql="select series_name from series where series_id=?";
		return (String)this.queryOne(sql, id);
	}
}
