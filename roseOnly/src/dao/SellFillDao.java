package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.SellEntity;

public class SellFillDao implements FillData<SellEntity> {

	@Override
	public List<SellEntity> fill(ResultSet rs) throws SQLException {
		List<SellEntity> list = new ArrayList<SellEntity>();
		// 读取rs数据存放到list集合
		while (rs.next()) {
			SellEntity a=new SellEntity();
			a.setSell_id(rs.getString("sell_id"));
			a.setSale_id(rs.getString("sale_id"));
			a.setCommodity_id(rs.getString("commodity_id"));
			a.setNumber(rs.getInt("number"));
			a.setPrice(rs.getDouble("price"));
			a.setSubtotal(rs.getDouble("subtotal"));
			list.add(a);
		}
		return list;
	}
}