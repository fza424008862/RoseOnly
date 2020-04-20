package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.SpecificationsEntity;

public class SpecificationsFillDao implements FillData<SpecificationsEntity> {

	@Override
	public List<SpecificationsEntity> fill(ResultSet rs) throws SQLException {
		List<SpecificationsEntity> list = new ArrayList<SpecificationsEntity>();
		// 读取rs数据存放到list集合
		while (rs.next()) {
			SpecificationsEntity a=new SpecificationsEntity();
			a.setSpecifications_id(rs.getString("specifications_id"));
			a.setSpecifications_name(rs.getString("specifications_name"));
			a.setState(rs.getInt("state"));
			list.add(a);
		}
		return list;
	}
}