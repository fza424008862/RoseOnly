package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.OrderView;

public class OrderFillDao implements FillData<OrderView> {

	@Override
	public List<OrderView> fill(ResultSet rs) throws SQLException {
		List<OrderView> list = new ArrayList<OrderView>();
		// 读取rs数据存放到list集合
		while (rs.next()) {
			OrderView a=new OrderView();
			a.setSale_id(rs.getString("sale_id"));
			a.setPay_way(rs.getString("pay_way"));
			a.setOrder_status(rs.getString("order_status"));
			a.setDate_in(rs.getTimestamp("date_in"));
			a.setTotal_amount(rs.getDouble("total_amount"));
			a.setCommodity_name(rs.getString("commodity_name"));
			a.setCommodity_id(rs.getString("commodity_id"));
			a.setPrice(rs.getDouble("price"));
			a.setNumber(rs.getInt("number"));
			a.setPay_status(rs.getString("pay_status"));
			a.setReceiving_name(rs.getString("receiving_name"));
			a.setReceiving_phone(rs.getString("receiving_phone"));
			a.setAddress(rs.getString("address"));
			a.setImges_url(rs.getString("imges_url"));
			list.add(a);
		}
		return list;
	}
}