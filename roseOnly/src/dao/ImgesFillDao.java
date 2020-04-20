package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.ImgesEntity;

public class ImgesFillDao implements FillData<ImgesEntity> {

	@Override
	public List<ImgesEntity> fill(ResultSet rs) throws SQLException {
		List<ImgesEntity> list = new ArrayList<ImgesEntity>();
		// 读取rs数据存放到list集合
		while (rs.next()) {
			ImgesEntity a=new ImgesEntity();
			a.setImges_id(rs.getString("imges_id"));
			a.setImges_url(rs.getString("imges_url"));
			a.setImges_type(rs.getInt("imges_type"));
			a.setCommodity_id(rs.getString("commodity_id"));
			list.add(a);
		}
		return list;
	}
}