package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.RoleAllotEntity;

public class RoleAllotFillDao implements FillData<RoleAllotEntity> {

	@Override
	public List<RoleAllotEntity> fill(ResultSet rs) throws SQLException {
		List<RoleAllotEntity> list = new ArrayList<RoleAllotEntity>();
		// 读取rs数据存放到list集合
		while (rs.next()) {
			RoleAllotEntity a=new RoleAllotEntity();
			a.setEmployee_id(rs.getString("employee_id"));
			a.setTitle_id(rs.getString("title_id"));
			list.add(a);
		}
		return list;
	}
}