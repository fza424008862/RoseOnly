package biz;

import java.util.List;


import dao.PowerDao;
import entity.PowerEntity;

public class PowerBiz {
	//创建Dao对象
	PowerDao pd=new PowerDao();
	
	/**
	 *添加权限 
	 * @param pe
	 * @return
	 * @throws Exception
	 */
	public int addPower(PowerEntity pe) throws Exception {
		return pd.addPower(pe);		
	}
	
	/**
	 *删除权限id
	 * @param power_id
	 * @return
	 * @throws Exception
	 */
	public int deletePower(String power_id) throws Exception {
		return pd.deletePower(power_id);	
	}
	
	/**
	 *修改权限 
	 * @param pe
	 * @return
	 * @throws Exception
	 */
	public int updatePower(PowerEntity pe,String oldname) throws Exception {
		return pd.updatePower(pe,oldname);	
	}
	
	/**
	 *查询所有权限信息
	 * @return
	 * @throws Exception
	 */
	public List<PowerEntity> queryAllPower() throws Exception{
		return pd.queryAllPower();	
	}
}
