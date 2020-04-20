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
	 * ��ѯ��������(Ҫ���ݵ�¼���û�vip�Ų�ѯ��Ӧ�Ķ�������)
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
	 * ��̨��ѯ������������
	 * @throws Exception 
	 */
	public List<SaleEntity> select() throws Exception{
		String sql="select * from sale";
		List<SaleEntity> list=this.query(sql, new SaleFillDao());
		return list;
	}
	
	
	
	/**
	 * ��̨��ѯ������������
	 * @throws Exception 
	 */
	public List<SaleEntity> selectByUserId(String id) throws Exception{
		String sql="select * from sale where user_id=?";
		List<SaleEntity> list=this.query(sql, new SaleFillDao(),id);
		return list;
	}
	/**
	 * ��̨�鿴��������
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
	 * ��Ʒ��ҳ��ѯ
	 * 
	 * @param page
	 * ��ǰҳ�Ŀ�ʼλ��
	 * @return
	 * @throws Exception 
	 */
	public List<SaleEntity> queryPageGoods(int page) throws Exception {
		// ƴ��ҳ��sql���
		String sql = "select * from sale  limit  " + page + ",2";
		try {
			return this.query(sql, new SaleFillDao());
		} catch (ClassNotFoundException e) {
			throw new ClassNotFoundException("��ҳ��ѯ����!�����Ҳ���.");
		} catch (SQLException e) {
			e.printStackTrace();
			throw new SQLException("��ҳ��ѯ����!�﷨����!");
		}
	}

	/**
	 * ��ȡ��ҳ��
	 * @return
	 * @throws Exception 
	 */
	public int getGoodsPages() throws Exception {
		String sql="select count(*) from sale";
		Object obj=this.queryOne(sql);
		if(obj!=null) {
			//������
			int rows=Integer.parseInt( String.valueOf(obj) );
			return rows%2==0?rows/2:(rows/2+1);
		}else {
			return 0;
		}
	}
	/**
	 * �����û�����ȡ��Ʒid
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
	 * �����û�id�����ҵ���ַ���������ֻ���
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
		String sql="insert into sale values(?,?,1,?,now(),'����֧��',null,1,?,?,null,?) ";
		return this.update(sql, getId(),
								u.getUser_id(),
								zj,
								sdh,
								shr,
								dz);
	}
	/**
	 * �Զ�����sale���
	 */
	public String getId() throws Exception {
		String sql="select max(sale_id) from sale";
		//����QueryOne�ķ���
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
	 * �Զ�����sell���
	 */
	public String getId2() throws Exception {
		String sql="select max(sell_id) from sell";
		//����QueryOne�ķ���
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
		//����QueryOne�ķ���
		Object x=this.queryOne(sql, null);
		return x.toString();
	}
	/**
	 * ��ɸ����޸Ķ������ʱ���֧��ʱ��
	 */

	public int updateTime(String sale_id) throws Exception {
		String sql="update sale set pay_date=now(),over_date=now() where sale_id=?";
		int row=this.update(sql,sale_id);
		return row;
	}
	/**
	 * ���ǰȥ������޸Ĺ��ﳵ��״̬��Ϣ
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
