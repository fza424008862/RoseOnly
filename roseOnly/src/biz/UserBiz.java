package biz;

import java.util.List;

import dao.UserDao;
import entity.UserEntity;

public class UserBiz {
UserDao dao = new UserDao();
	
	/**
	 * ע��
	 */
	public int addUser(UserEntity entity) throws Exception {
		if( dao.checkAdd(entity.getUser_phone())==0 ) {
			return dao.addUser(entity);
		}else {
			return 0;
		}
	}
	/**
	 * ��¼
	 */
	public int login(UserEntity entity) throws Exception {
		return dao.login(entity);
	}
	/**
	 * ���ݵ绰���룬����Ƿ��и��û�
	 * @param phone
	 * @return
	 * @throws Exception 
	 */
	public boolean checkPhone(String phone) throws Exception {
		return dao.byPhoneSelect(phone);
	}
	public String huoquId(String phone) throws Exception {
		return dao.huoquId(phone);
	}
	/**
	 * ��ѯ
	 */
	public  List<UserEntity> chaxun() throws Exception {
		List<UserEntity> row=dao.chaxun();
		return row;
	}
	
}

