package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.PowerAllotEntity;

public class PowerAllotFillDao implements FillData<PowerAllotEntity> {

	@Override
	public List<PowerAllotEntity> fill(ResultSet rs) throws SQLException {
		List<PowerAllotEntity> list = new ArrayList<PowerAllotEntity>();
		// 读取rs数据存放到list集合
		while (rs.next()) {
			PowerAllotEntity a=new PowerAllotEntity();
			a.setTitle_id(rs.getString("title_id"));
			a.setPower_id(rs.getString("power_id"));
			list.add(a);
		}
		return list;
	}
}