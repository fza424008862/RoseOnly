package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.CommodityEntity;

public class CommodityFillDao implements FillData<CommodityEntity> {

	@Override
	public List<CommodityEntity> fill(ResultSet rs) throws SQLException {
		List<CommodityEntity> list = new ArrayList<CommodityEntity>();
		// 读取rs数据存放到list集合
		while (rs.next()) {
			CommodityEntity a=new CommodityEntity();
			a.setCommodity_id(rs.getString("commodity_id"));
			a.setCommodity_type_id(rs.getString("commodity_type_id"));
			a.setSeries_id(rs.getString("series_id"));
			a.setType_id(rs.getString("type_id"));
			a.setSpecifications_id(rs.getString("specifications_id"));
			//改动
			a.setGoods_stock_price(rs.getDouble("goods_stick_price"));
			a.setPrice(rs.getDouble("price"));
			a.setDescribe_one(rs.getString("describe_one"));
			//改动
			a.setDescribe_two(rs.getString("describle_two"));
			a.setCommodity_name(rs.getString("commodity_name"));
			a.setTotal_number(rs.getInt("total_number"));
			a.setSurplus_number(rs.getInt("surplus_number"));
			list.add(a);
		}
		return list;
	}
}