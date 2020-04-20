package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.ConsigneeEntity;



public class ConsigneeFillDao implements FillData<ConsigneeEntity> {

	@Override
	public List<ConsigneeEntity> fill(ResultSet rs) throws SQLException {
		List<ConsigneeEntity> list = new ArrayList<ConsigneeEntity>();
		// 读取rs数据存放到list集合
		while (rs.next()) {
			ConsigneeEntity a=new ConsigneeEntity();
			a.setAdd_id(rs.getString("add_id"));
			a.setUser_id(rs.getString("user_id"));
			a.setReceiveing_phone(rs.getString("receiveing_phone"));
			a.setReceiveing_name(rs.getString("receiveing_name"));
			a.setAddress(rs.getString("address"));
			list.add(a);
		}
		return list;
	}
}
