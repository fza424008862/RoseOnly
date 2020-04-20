package dao;

import java.util.List;

import entity.PowerEntity;

public class PowerDao extends BaseDao{
	
	/**
	 *添加权限
	 * @param pe
	 * @return
	 * @throws Exception
	 */
	public int addPower(PowerEntity pe) throws Exception {
		String sql="insert into power value(?,?)";
		//调用BaseDao的添加方法
		return this.update(sql,addPowerId(),pe.getPower_name());
	}
	
	/**
	 *删除权限id 
	 * @param power_id
	 * @return
	 * @throws Exception
	 */
	public int deletePower(String power_id) throws Exception {
		String sql="delete from power where power_id=?";
		return this.update(sql, power_id);	
	}
	
	/**
	 *修改权限 
	 * @param pe
	 * @return
	 * @throws Exception
	 */
	public int updatePower(PowerEntity pe,String oldname) throws Exception {
		String sql="update power set power_name=? where power_id=?";
		return this.update(sql, pe.getPower_id(),pe.getPower_name(),oldname);
	}
	
	/**
	 *查询所有权限信息
	 * @return
	 * @throws Exception
	 */
	public List<PowerEntity> queryAllPower() throws Exception{
		String sql="select * from power";
		return this.query(sql,new PowerFillDao());
	}
	
	/**
	 * 自动生成id
	 * @return
	 * @throws Exception
	 */
	public String addPowerId() throws Exception {
		String sql="select max(power_id) from power";
		String id=String.valueOf(this.queryOne(sql, null));
		if(id.equals("null")) {
				id="pow001";
		}else {
				int y=Integer.parseInt(id.substring(3))+1;
				if(y<10) {
					id="pow00"+y;
				}else if(y<100) {
					id="pow0"+y;
				}else {
					id="pow"+y;
				}
		}
		return id;
	}
}
