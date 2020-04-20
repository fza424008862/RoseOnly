package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.UserEntity;

public class UserFillDao implements FillData<UserEntity> {

	@Override
	public List<UserEntity> fill(ResultSet rs) throws SQLException {
		List<UserEntity> list = new ArrayList<UserEntity>();
		// 读取rs数据存放到list集合
		while (rs.next()) {
			UserEntity a=new UserEntity();
			a.setUser_id(rs.getString("user_id"));
			a.setUser_phone(rs.getString("user_phone"));
			a.setUser_pass(rs.getString("user_pass"));
			a.setUser_jf(rs.getInt("user_jf"));
			a.setDate_in(rs.getTimestamp("date_in"));
			a.setUser_sex(rs.getString("user_sex"));
			a.setUser_address(rs.getString("user_address"));
			a.setUser_name(rs.getString("user_name"));
			a.setUser_birthday(rs.getDate("user_birthday"));
			list.add(a);
		}
		return list;
	}
}