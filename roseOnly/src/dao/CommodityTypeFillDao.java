package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.CommodityTypeEntity;

public class CommodityTypeFillDao implements FillData<CommodityTypeEntity> {

	@Override
	public List<CommodityTypeEntity> fill(ResultSet rs) throws SQLException {
		List<CommodityTypeEntity> list = new ArrayList<CommodityTypeEntity>();
		// 读取rs数据存放到list集合
		while (rs.next()) {
			CommodityTypeEntity a=new CommodityTypeEntity();
			a.setCommodity_type_id(rs.getString("commodity_type_id"));
			a.setCommodity_type_name(rs.getString("commodity_type_name"));
			a.setState(rs.getInt("state"));
			list.add(a);
		}
		return list;
	}
}