package dao;

import java.sql.SQLException;
import java.util.List;

import entity.SellEntity;

public class SellDao extends BaseDao {

	/**
	 * 根据订单id查找详情
	 * @throws Exception 
	 */
	public List<SellEntity> selectsell(String sale_id) throws Exception{
		String sql="select * from sell where sale_id=?";
		List<SellEntity> list=this.query(sql, new SellFillDao(), sale_id);
		return list;
	}
	
	
}
