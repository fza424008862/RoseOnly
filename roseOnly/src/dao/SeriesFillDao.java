package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.SeriesEntity;

public class SeriesFillDao implements FillData<SeriesEntity> {

	@Override
	public List<SeriesEntity> fill(ResultSet rs) throws SQLException {
		List<SeriesEntity> list = new ArrayList<SeriesEntity>();
		// 读取rs数据存放到list集合
		while (rs.next()) {
			SeriesEntity a=new SeriesEntity();
			a.setSeries_id(rs.getString("series_id"));
			a.setSeries_name(rs.getString("series_name"));
			a.setState(rs.getInt("state"));
			list.add(a);
		}
		return list;
	}
}