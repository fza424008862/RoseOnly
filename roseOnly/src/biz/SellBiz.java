package biz;

import java.util.List;

import dao.SellDao;
import entity.SellEntity;

public class SellBiz {
	SellDao sd=new SellDao();

	/**
	 * ���ݲ��ҵĶ���id���г���������
	 * @throws Exception 
	 */
	public List<SellEntity> Selectsell(String sale_id) throws Exception{
		return sd.selectsell(sale_id);
	}
	
	
}
