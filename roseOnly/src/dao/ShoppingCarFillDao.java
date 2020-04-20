package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.ShoppingCarEntity;

public class ShoppingCarFillDao implements FillData<ShoppingCarEntity> {

	@Override
	public List<ShoppingCarEntity> fill(ResultSet rs) throws SQLException {
		List<ShoppingCarEntity> list = new ArrayList<ShoppingCarEntity>();
		// 读取rs数据存放到list集合
		while (rs.next()) {
			ShoppingCarEntity a=new ShoppingCarEntity();
			a.setShopping_id(rs.getString("shopping_id"));
			a.setUser_id(rs.getString("user_id"));
			a.setCommodity_id(rs.getString("commodity_id"));
			a.setSeries_id(rs.getString("series_id"));
			a.setCommodity_type_id(rs.getString("commodity_type_id"));
			a.setType_id(rs.getString("type_id"));
			a.setSpecifications_id(rs.getString("specifications_id"));
			a.setNumber(rs.getInt("number"));
			a.setPrice(rs.getDouble("price"));
			a.setTotal_prices(rs.getDouble("total_prices"));
			a.setState(rs.getInt("state"));
			a.setCommodity_name(rs.getString("commodity_name"));
			list.add(a);
		}
		return list;
	}
}