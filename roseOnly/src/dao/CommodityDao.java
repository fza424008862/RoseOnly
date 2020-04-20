package dao;

import java.util.List;

import entity.CommodityEntity;

public class CommodityDao extends BaseDao{
	//打印所有商品
	public List<CommodityEntity> inputAll() throws Exception{
		String sql="select * from commodity";
		return this.query(sql, new CommodityFillDao(), null);
	}
	//添加商品
	public int addShop(CommodityEntity x) throws Exception {
		String sql="insert into commodity values(?,?,?,?,?,?,?,?,?,?,?,?)";
		int row=this.update(sql, this.getId(),x.getCommodity_type_id(),x.getSeries_id(),x.getType_id(),x.getSpecifications_id(),x.getGoods_stock_price(),x.getPrice(),x.getDescribe_one(),x.getDescribe_two(),x.getCommodity_name(),x.getTotal_number(),x.getSurplus_number());
		return row;
	}
	//自增ID
	public String getId() throws Exception {
		String sql="select max(commodity_id) from commodity";
		String id = String.valueOf(this.queryOne(sql, null));
		if(id.equals("null")) {
			id = "good001";
		}else {
			int i = Integer.parseInt(id.substring(4))+1;
			if(i<10) {
				id = "good00"+i;
			}else if(i<100) {
				id = "good0"+i;
			}else  {
				id = "good"+i;
			}
		}
		return id;
	}
	//判断添加的名字是否存在
	public boolean panduan(String typeName) throws Exception {
		String sql="select * from commodity where commodity_name=?";
		//false并不存在 true存在
		return this.query(sql, new TypeFillDao(), typeName).size()==0?false:true;
	}
	//删除商品
	public int deletes(String name) throws Exception {
		String sql="delete from commodity where commodity_name=?";
		return this.update(sql, name);
	}
	//修改商品
	public int xiugai(CommodityEntity x,String oldname) throws Exception {
		String comtype=x.getCommodity_type_id();
		String lx=x.getSeries_id();
		String type=x.getType_id();
		String gg=x.getSpecifications_id();
		double price=x.getPrice();
		String name=x.getCommodity_name();
		int number=x.getTotal_number();
		String sql="update commodity set commodity_type_id=?, series_id=?, type_id=?, specifications_id=?, goods_stick_price=?, price=? , commodity_name=?, total_number=?, surplus_number=? where commodity_name=? ";
		return this.update(sql, comtype,lx,type,gg,price,price,name,number,number,oldname);
				
	}
	//查单一商品
	public List <CommodityEntity> inputOne(String id) throws Exception{
		String sql="select * from commodity where commodity_id=?";
		return this.query(sql, new CommodityFillDao(), id);
	}
	//返回商品id
	public String huoquId(String shop_name) throws Exception {
		String sql="select commodity_id from commodity where commodity_name=?";
		return (String)this.queryOne(sql, shop_name);
	}
	public String selectimg(String commodity) throws Exception {
		String sql="select imges_url from imges where commodity=?";
		Object x=this.queryOne(sql, commodity);
		String y=String.valueOf(x);
		return y;
	}
}
