package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.SaleEntity;

public class SaleFillDao implements FillData<SaleEntity> {

	@Override
	public List<SaleEntity> fill(ResultSet rs) throws SQLException {
		List<SaleEntity> list = new ArrayList<SaleEntity>();
		// 读取rs数据存放到list集合
		while (rs.next()) {
			SaleEntity a=new SaleEntity();
			a.setSale_id(rs.getString("sale_id"));
			a.setUser_id(rs.getString("user_id"));
			a.setOrder_status(rs.getInt("order_status"));
			a.setTotal_amount(rs.getDouble("total_amount"));
			a.setDate_in(rs.getTimestamp("date_in"));
			a.setPay_way(rs.getString("pay_way"));
			a.setPay_date(rs.getTimestamp("pay_date"));
			a.setPay_status(rs.getInt("pay_status"));
			a.setReceiving_phone(rs.getString("receiving_phone"));
			a.setReceiving_name(rs.getString("receiving_name"));
			a.setOver_date(rs.getTimestamp("over_date"));
			a.setAddress(rs.getString("address"));
			list.add(a);
		}
		return list;
	}
}