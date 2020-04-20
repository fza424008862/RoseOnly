package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.EmployeeEntity;

public class EmployeeFillDao implements FillData<EmployeeEntity> {

	@Override
	public List<EmployeeEntity> fill(ResultSet rs) throws SQLException {
		List<EmployeeEntity> list = new ArrayList<EmployeeEntity>();
		// 读取rs数据存放到list集合
		while (rs.next()) {
			EmployeeEntity a=new EmployeeEntity();
			a.setEmployee_id(rs.getString("employee_id"));
			a.setEmployee_name(rs.getString("employee_name"));
			a.setEmployee_pass(rs.getString("employee_pass"));
			a.setTitle_id(rs.getString("title_id"));
			a.setContact(rs.getString("contact"));
			a.setDate_in(rs.getDate("date_in"));
			a.setState(rs.getInt("state"));
			list.add(a);
		}
		return list;
	}
}