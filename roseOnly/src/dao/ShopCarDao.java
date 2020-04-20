package dao;

import java.util.List;

import entity.ShoppingCarEntity;

public class ShopCarDao extends BaseDao{
	public List<ShoppingCarEntity> selectshop(String user_id) throws Exception{
		String sql="select * from shoppingcar where user_id=? and state=0";
		List<ShoppingCarEntity> list=this.query(sql, new ShoppingCarFillDao(), user_id);
		return list;
	}
	public int addCar(ShoppingCarEntity x) throws Exception {
		String sql="insert into shoppingcar values(?,?,?,?,?,?,?,?,?,?,0,?)";
		return this.update(sql, this.getId(),x.getUser_id(),x.getCommodity_id(),x.getCommodity_type_id(),x.getSeries_id(),x.getType_id(),x.getSpecifications_id(),x.getNumber(),x.getPrice(),x.getTotal_prices(),x.getCommodity_name());
	}
	
	/**
	 * 更改数量和价格
	 * @throws Exception 
	 */
	public int change(String number, String price, String shopping_id) throws Exception {
		String sql="update shoppingcar set number=? where shopping_id=?";
		return this.update(sql, number,shopping_id);
	}
	//自增ID
	public String getId() throws Exception {
		String sql="select max(shopping_id) from shoppingcar";
		String id = String.valueOf(this.queryOne(sql, null));
		if(id.equals("null")) {
			id = "shop001";
		}else {
			int i = Integer.parseInt(id.substring(4))+1;
			if(i<10) {
				id = "shop00"+i;
			}else if(i<100) {
				id = "shop0"+i;
			}else  {
				id = "shop"+i;
			}
		}
		return id;
	}
}
