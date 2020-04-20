package biz;

import java.util.List;

import dao.SellDao;
import entity.SellEntity;

public class SellBiz {
	SellDao sd=new SellDao();

	/**
	 * 根据查找的订单id，列出订单详情
	 * @throws Exception 
	 */
	public List<SellEntity> Selectsell(String sale_id) throws Exception{
		return sd.selectsell(sale_id);
	}
	
	
}
