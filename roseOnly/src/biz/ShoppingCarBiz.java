package biz;

import java.util.List;

import dao.ShopCarDao;
import entity.ShopCarView;
import entity.ShoppingCarEntity;

public class ShoppingCarBiz {
	ShopCarDao sc=new ShopCarDao();	
	/**
	 * 把购物车商品显示出来
	 * @throws Exception 
	 */
	public List<ShoppingCarEntity> Selectshop(String user_id) throws Exception{
		return sc.selectshop(user_id);
	}
	
	public int change(String number, String price, String shopping_id) throws Exception {
		return sc.change(number, price, shopping_id);
	}
	public int addCar(ShoppingCarEntity x) throws Exception {
		return sc.addCar(x);
	}
}
