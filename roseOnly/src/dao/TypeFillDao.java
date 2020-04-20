package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.TypeEntity;

public class TypeFillDao implements FillData<TypeEntity> {

	@Override
	public List<TypeEntity> fill(ResultSet rs) throws SQLException {
		List<TypeEntity> list = new ArrayList<TypeEntity>();
		// 读取rs数据存放到list集合
		while (rs.next()) {
			TypeEntity a=new TypeEntity();
			a.setType_id(rs.getString("type_id"));
			a.setType_name(rs.getString("type_name"));
			list.add(a);
		}
		return list;
	}
}