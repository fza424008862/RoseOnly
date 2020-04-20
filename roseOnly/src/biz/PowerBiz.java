package biz;

import java.util.List;


import dao.PowerDao;
import entity.PowerEntity;

public class PowerBiz {
	//����Dao����
	PowerDao pd=new PowerDao();
	
	/**
	 *���Ȩ�� 
	 * @param pe
	 * @return
	 * @throws Exception
	 */
	public int addPower(PowerEntity pe) throws Exception {
		return pd.addPower(pe);		
	}
	
	/**
	 *ɾ��Ȩ��id
	 * @param power_id
	 * @return
	 * @throws Exception
	 */
	public int deletePower(String power_id) throws Exception {
		return pd.deletePower(power_id);	
	}
	
	/**
	 *�޸�Ȩ�� 
	 * @param pe
	 * @return
	 * @throws Exception
	 */
	public int updatePower(PowerEntity pe,String oldname) throws Exception {
		return pd.updatePower(pe,oldname);	
	}
	
	/**
	 *��ѯ����Ȩ����Ϣ
	 * @return
	 * @throws Exception
	 */
	public List<PowerEntity> queryAllPower() throws Exception{
		return pd.queryAllPower();	
	}
}
