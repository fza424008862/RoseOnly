package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.OrderDetailView;

public class OrderDetailFillDao implements FillData<OrderDetailView> {

	@Override
	public List<OrderDetailView> fill(ResultSet rs) throws SQLException {
		List<OrderDetailView> list = new ArrayList<OrderDetailView>();
		// 读取rs数据存放到list集合
		while (rs.next()) {
			OrderDetailView a=new OrderDetailView();
			a.setCommodity_name(rs.getString("commodity_name"));
			a.setPrice(rs.getDouble("price"));
			a.setNumber(rs.getInt("number"));
			a.setPay_status(rs.getString("pay_status"));
			a.setReceiving_name(rs.getString("receiving_name"));
			a.setReceiving_phone(rs.getString("receiving_phone"));
			a.setAddress(rs.getString("address"));
			a.setSale_id(rs.getString("sale_id"));
			a.setOrder_status(rs.getString("order_status"));
			list.add(a);
		}
		return list;
	}
}