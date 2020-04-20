package biz;

import java.util.List;

import entity.*;
import dao.SaleDao;
import entity.OrderDetailView;
import entity.OrderView;
import entity.SaleEntity;
import entity.SellEntity;
import entity.ShoppingCarEntity;
import entity.goodsImgView;

public class SaleBiz {
	SaleDao sd=new SaleDao();
	
	/**
	 * 查询订单数据显示
	 * @throws Exception 
	 */
	public List<OrderView> SelectSale(String user_id) throws Exception{
		return sd.selectsale(user_id);
	}
	
	/**
	 * 查询订单数据(后台显示)
	 * @throws Exception 
	 */
	public List<SaleEntity> Select() throws Exception{
		return sd.select();
	}
	
	/**
	 * 查询订单数据(后台显示)
	 * @throws Exception 
	 */
	public List<SaleEntity> SelectByUserId(String id) throws Exception{
		return sd.selectByUserId(id);
	}
	
	/**
	 * 订单详情数据
	 * @throws Exception 
	 */
	public List<OrderDetailView> selectBysell(String sale_id) throws Exception{
		return sd.selectsell(sale_id);
	}
	
	/**
	 * 分页查询
	 * 
	 * @param page
	 *            当前页码
	 * @return 每一页的数据
	 * @throws Exception 
	 */
	public List<SaleEntity> queryPageGoods(int page) throws Exception {
		// 计算当前页的开始位置
		int x = (page - 1) * 2;
		// 调用分页查询方法
		return sd.queryPageGoods(x);
	}

	/**
	 * 获取总页码
	 * @return
	 * @throws Exception 
	 */
	public int getGoodsPages() throws Exception {
		return sd.getGoodsPages();
	}
	public List<goodsImgView> SelectImg(String user_id) throws Exception{
		return sd.selectImg(user_id);
	}
	/**
	 * 修改订单支付状态
	 * @throws Exception 
	 */
	public int Updatepay(String sale_id) throws Exception {
		return sd.updatepay(sale_id);
	}
	public List<ShoppingCarEntity> selectshop(String user_id,String shopping_id) throws Exception{
		return sd.selectshop(user_id,shopping_id);
	}
	public List<UserEntity> cx(String user_id) throws Exception{
		return sd.cx(user_id);
	}
	public int addsale(UserEntity u,String zj, String shr,String sdh,String dz) throws Exception {
		return sd.addsale(u, zj,shr,sdh,dz);
	}
	public int addsell(ShoppingCarEntity s,String commodity_id) throws Exception {
		return sd.addsell(s, commodity_id);
	}
	public int updateTime(String sale_id) throws Exception {
		return sd.updateTime(sale_id);
	}
	public int updateS(String shopping_id) throws Exception {
		return sd.updateS(shopping_id);
	}
	public int fh(String sale_id) throws Exception {
		return sd.fh(sale_id);
	}
}
