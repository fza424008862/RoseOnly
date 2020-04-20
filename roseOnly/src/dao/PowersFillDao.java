package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.PowerEntity;

public class PowersFillDao implements FillData<PowerEntity> {

	@Override
	public List<PowerEntity> fill(ResultSet rs) throws SQLException {
		List<PowerEntity> list = new ArrayList<PowerEntity>();
		// ��ȡrs���ݴ�ŵ�list����
		while (rs.next()) {
			PowerEntity a=new PowerEntity();
			a.setPower_id(rs.getString("power_id"));
			a.setPower_name(rs.getString("power_name"));
			list.add(a);
		}
		return list;
	}
}