package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.AtcionEntity;

public class AtcionFillDao implements FillData<AtcionEntity> {

	@Override
	public List<AtcionEntity> fill(ResultSet rs) throws SQLException {
		List<AtcionEntity> list = new ArrayList<AtcionEntity>();
		// ��ȡrs���ݴ�ŵ�list����
		while (rs.next()) {
			AtcionEntity a=new AtcionEntity();
			a.setAtcion_id(rs.getString("atcion_id"));
			a.setEmployee_id(rs.getString("employee_id"));
			a.setAtcion_date(rs.getTimestamp("atcion_date"));
			a.setAtcion_centes(rs.getString("atcion_centes"));
			list.add(a);
		}
		return list;
	}
}