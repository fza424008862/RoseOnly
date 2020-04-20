package biz;

import java.util.List;

import dao.ConsigneeDao;
import entity.ConsigneeEntity;


public class ConsigneeBiz {
	ConsigneeDao dao = new ConsigneeDao();
	/**
	 * 添加收货人信息
	 */
	public int addPeople(ConsigneeEntity entity) throws Exception {
			return dao.addPeople(entity);
		}
	/**
	 * 查询
	 */
	public List<ConsigneeEntity> chaxun(String user_id)throws Exception{
		return dao.chaxun(user_id);
		
	}
}
