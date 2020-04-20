package dao;

import java.util.List;

import entity.ConsigneeEntity;



public class ConsigneeDao extends BaseDao{

	/**
	 * 添加收货人信息
	 */
	public int addPeople(ConsigneeEntity entity) throws Exception {
		String sql = "insert into consignee values(?,?,?,?,?)";
		int row = this.update(sql,this.getId(),entity.getUser_id(),entity.getReceiveing_name(), entity.getReceiveing_phone(),entity.getAddress());
		return row;
	}
	/**
	 * 自动获取编号
	 */
	public String getId() throws Exception {
		String sql = "select max(add_id) from consignee";
		Object x = this.queryOne(sql, null);
		String sale_id = String.valueOf(x);
		int a = 1;
		if (x != null) {
			a = Integer.parseInt(sale_id.substring(2)) + 1;
		}
		if (a < 10) {
			sale_id = "sh00" + a;
		} else if (a < 100) {
			sale_id = "sh0" + a;
		} else {
			sale_id = "sh" + a;
		}
		return sale_id;
	}
	public List<ConsigneeEntity> chaxun(String user_id) throws Exception {
		String sql="select * from consignee where user_id=?";
		return this.query(sql, new ConsigneeFillDao(), user_id);
	}
	
}
