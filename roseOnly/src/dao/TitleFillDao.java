package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.TitleEntity;



public class TitleFillDao implements FillData<TitleEntity> {

	@Override
	public List<TitleEntity> fill(ResultSet rs) throws SQLException {
		List<TitleEntity> list = new ArrayList<TitleEntity>();
		// 读取rs数据存放到list集合
		while (rs.next()) {
			TitleEntity a=new TitleEntity();
			a.setTitle_id(rs.getString("title_id"));
			a.setTitle_name(rs.getString("title_name"));
			list.add(a);
		}
		return list;
	}
}