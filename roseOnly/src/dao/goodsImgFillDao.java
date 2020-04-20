package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.EmployeeEntity;
import entity.goodsImgView;

public class goodsImgFillDao implements FillData<goodsImgView> {
	public List<goodsImgView> fill(ResultSet rs) throws SQLException {
		List<goodsImgView> list = new ArrayList<goodsImgView>();
		// 读取rs数据存放到list集合
		while (rs.next()) {
			goodsImgView a=new goodsImgView();
			a.setSale_id(rs.getString("sale_id"));
			a.setSell_id(rs.getString("sell_id"));
			a.setCommodity_id(rs.getString("commodity_id"));
			a.setImges_url(rs.getString("imges_url"));
			list.add(a);
		}
		return list;
	}
}
