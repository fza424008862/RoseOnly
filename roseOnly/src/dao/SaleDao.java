package dao;

import java.sql.SQLException;
import java.util.List;

import entity.OrderDetailView;
import entity.OrderView;
import entity.SaleEntity;
import entity.ShoppingCarEntity;
import entity.UserEntity;
import entity.goodsImgView;

public class SaleDao extends BaseDao {
	/**
	 * 查询订单数据(要根据登录的用户vip号查询对应的订单详情)
	 * @throws Exception 
	 */
	public List<OrderView> selectsale(String user_id) throws Exception{
		String sql="select sale.sale_id,sale.pay_way,sale.order_status,sale.date_in,sale.total_amount,commodity.commodity_name,commodity.commodity_id,imges.imges_url,sell.price,sell.number,sale.pay_status,sale.receiving_name,sale.receiving_phone,sale.address\r\n" + 
				"from sale left join sell \r\n" + 
				"on sale.sale_id=sell.sale_id \r\n" + 
				"LEFT JOIN commodity \r\n" + 
				"on sell.commodity_id=commodity.commodity_id\r\n" + 
				"left join imges\r\n" + 
				"on imges.commodity_id=commodity.commodity_id\r\n" + 
				"where sale.user_id=? and imges.imges_type='1'";
		List<OrderView> list=this.query(sql, new OrderFillDao(), user_id);
		return list;
	}
	
	
	
	
	
	
	/**
	 * 后台查询订单数据所有
	 * @throws Exception 
	 */
	public List<SaleEntity> select() throws Exception{
		String sql="select * from sale";
		List<SaleEntity> list=this.query(sql, new SaleFillDao());
		return list;
	}
	
	
	
	/**
	 * 后台查询订单数据所有
	 * @throws Exception 
	 */
	public List<SaleEntity> selectByUserId(String id) throws Exception{
		String sql="select * from sale where user_id=?";
		List<SaleEntity> list=this.query(sql, new SaleFillDao(),id);
		return list;
	}
	/**
	 * 后台查看订单详情
	 * @throws Exception 
	 */
	public List<OrderDetailView> selectsell(String sale_id) throws Exception{
		String sql="select commodity.commodity_name,sell.price,sell.number,sale.order_status,sale.receiving_name,sale.receiving_phone,sale.address,sale.sale_id,sale.pay_status,commodity.commodity_id\r\n" + 
				"from sale left join sell\r\n" + 
				"on sale.sale_id=sell.sale_id\r\n" + 
				"left join commodity\r\n" + 
				"on sell.commodity_id=commodity.commodity_id\r\n" + 
				"where sale.sale_id=? and imges.imges_type='1'";
		List<OrderDetailView> list=this.query(sql, new OrderDetailFillDao() , sale_id);
		return list;
	}
	
	/**
	 * 商品分页查询
	 * 
	 * @param page
	 * 当前页的开始位置
	 * @return
	 * @throws Exception 
	 */
	public List<SaleEntity> queryPageGoods(int page) throws Exception {
		// 拼分页的sql语句
		String sql = "select * from sale  limit  " + page + ",2";
		try {
			return this.query(sql, new SaleFillDao());
		} catch (ClassNotFoundException e) {
			throw new ClassNotFoundException("分页查询错误!驱动找不到.");
		} catch (SQLException e) {
			e.printStackTrace();
			throw new SQLException("分页查询错误!语法有误!");
		}
	}

	/**
	 * 获取总页数
	 * @return
	 * @throws Exception 
	 */
	public int getGoodsPages() throws Exception {
		String sql="select count(*) from sale";
		Object obj=this.queryOne(sql);
		if(obj!=null) {
			//总条数
			int rows=Integer.parseInt( String.valueOf(obj) );
			return rows%2==0?rows/2:(rows/2+1);
		}else {
			return 0;
		}
	}
	/**
	 * 根据用户名获取商品id
	 * @throws Exception 
	 */
	public List<goodsImgView> selectImg(String user_id) throws Exception{
		String sql="select sale.sale_id,sell.sell_id,commodity.commodity_id,imges.imges_url\r\n" + 
				"from sale left join sell\r\n" + 
				"on sale.sale_id=sell.sale_id\r\n" + 
				"left join commodity\r\n" + 
				"on sell.commodity_id=commodity.commodity_id\r\n" + 
				"left join imges\r\n" + 
				"on commodity.commodity_id=imges.commodity_id\r\n" + 
				"where sale.user_id=? and imges.imges_type='1'";
		List<goodsImgView> list=this.query(sql, new goodsImgFillDao(), user_id);
		return list;
	}

	
	public int updatepay(String sale_id) throws Exception {
		String sql="update sale set pay_status=2,order_status=2 where sale_id=?";
		int row=this.update(sql,sale_id);
		return row;
	}

	public List<ShoppingCarEntity> selectshop(String user_id,String shopping_id) throws Exception{
		String sql="select * from shoppingcar where user_id=? and state=0 and shopping_id=?";
		List<ShoppingCarEntity> list=this.query(sql, new ShoppingCarFillDao(), user_id,shopping_id);
		return list;
	}
	/**
	 * 根据用户id，查找到地址，姓名，手机号
	 * @param user_id
	 * @return
	 * @throws Exception
	 */
	public List<UserEntity> cx(String user_id) throws Exception{
		String sql="select * from user where user_id=?";
		List<UserEntity> list=this.query(sql, new UserFillDao(), user_id);
		return list;
	}
	public int addsale(UserEntity u,String zj, String shr,String sdh,String dz) throws Exception {
		String sql="insert into sale values(?,?,1,?,now(),'在线支付',null,1,?,?,null,?) ";
		return this.update(sql, getId(),
								u.getUser_id(),
								zj,
								sdh,
								shr,
								dz);
	}
	/**
	 * 自动生成sale编号
	 */
	public String getId() throws Exception {
		String sql="select max(sale_id) from sale";
		//调用QueryOne的方法
		Object x=this.queryOne(sql, null);
		String id="";
		int y=0;
		if(x==null) {
			y=1;
			id="sale00"+y;
			return id;
		}else {
			id=String.valueOf(x);
			id=id.substring(4);
			y=Integer.parseInt(id)+1;
			if(y<10) {
				id="sale00"+y;
			}else if(y<100) {
				id="sale0"+y;
			}
			return id;
		}
	}
	public int addsell(ShoppingCarEntity s,String commodity_id) throws Exception {
		String sql="insert into sell values(?,?,?,?,?,?)";
		return this.update(sql,getId2(),
								getId3(),
								commodity_id,
								s.getNumber(),
								s.getPrice(),
								s.getTotal_prices());
	}
	/**
	 * 自动生成sell编号
	 */
	public String getId2() throws Exception {
		String sql="select max(sell_id) from sell";
		//调用QueryOne的方法
		Object x=this.queryOne(sql, null);
		String id="";
		int y=0;
		if(x==null) {
			y=1;
			id="sell00"+y;
			return id;
		}else {
			id=String.valueOf(x);
			id=id.substring(4);
			y=Integer.parseInt(id)+1;
			if(y<10) {
				id="sell00"+y;
			}else if(y<100) {
				id="sell0"+y;
			}
			return id;
		}
	}
	
	public String getId3() throws Exception {
		String sql="select max(sale_id) from sale";
		//调用QueryOne的方法
		Object x=this.queryOne(sql, null);
		return x.toString();
	}
	/**
	 * 完成付款修改订单完成时间和支付时间
	 */

	public int updateTime(String sale_id) throws Exception {
		String sql="update sale set pay_date=now(),over_date=now() where sale_id=?";
		int row=this.update(sql,sale_id);
		return row;
	}
	/**
	 * 点击前去付款就修改购物车的状态信息
	 * @throws Exception 
	 */
	public int updateS(String shopping_id) throws Exception {
		String sql="update shoppingcar set state=2 where shopping_id=?";
		return this.update(sql, shopping_id);
	}
	public int fh(String sale_id) throws Exception {
		String sql="update sale set pay_status=2 where sale_id=?";
		return this.update(sql, sale_id);
	}
	
}
