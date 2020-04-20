package dao;

import java.util.List;


import entity.UserEntity;

public class UserDao extends BaseDao{
	/**
	 * ע��
	 */
	public int addUser(UserEntity entity) throws Exception {
		String sql = "insert into user values(?,?,?,null,now(),null,null,null,null)";
		int row = this.update(sql,this.getId(),entity.getUser_phone(), entity.getUser_pass());
		return row;
	}
	/**
	 * �Զ���ȡ��Ա���
	 */
	public String getId() throws Exception {
		String sql = "select max(user_id) from user";
		Object x = this.queryOne(sql, null);
		String user_id = String.valueOf(x);
		int a = 1;
		if (x != null) {
			a = Integer.parseInt(user_id.substring(2)) + 1;
		}
		if (a < 10) {
			user_id = "hy00" + a;
		} else if (a < 100) {
			user_id = "hy0" + a;
		} else {
			user_id = "hy" + a;
		}
		return user_id;
	}

	

	/**
	 * ����û����Ƿ��ظ�
	 */
	public int checkAdd(String phone) throws Exception {
		String sql="select count(*) from user where user_phone=?";
		Object x=this.queryOne(sql, phone);
		return x==null?0:Integer.parseInt(String.valueOf(x));
	}
	/**
	 * ��¼
	 */
	public int login(UserEntity entity) throws Exception {
		String sql = "select count(*) from user where user_phone=? and user_pass=?";
		Object x = this.queryOne(sql, entity.getUser_phone(), entity.getUser_pass());
		return x == null ? 0 : Integer.parseInt(String.valueOf(x));
	}

	/**
	 * ���ݵ绰�����ѯ�Ƿ��и��û�
	 * @param phone
	 * @return
	 * @throws Exception 
	 */
	public boolean byPhoneSelect(String phone) throws Exception {
		String sql="select count(*) from user where user_phone=?";
		Object obj=this.queryOne(sql, phone);
		int x=Integer.parseInt(String.valueOf(obj));
		 System.out.println(x);
		//����иõ绰������true,û�иõ绰������false
		return x==0?false:true;
	}
	public String huoquId(String phone) throws Exception {
		String sql="select user_id from user where user_phone=?";
		return (String) this.queryOne(sql, phone);
	}
	/**
	 * ��ѯ
	 * @return
	 * @throws Exception
	 */
	public List<UserEntity> chaxun() throws Exception {
		String sql="select * from user";
		return this.query(sql, new UserFillDao());
	}
	
}

