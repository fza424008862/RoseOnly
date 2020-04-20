package dao;

import java.util.List;

import entity.PowerEntity;

public class PowerDao extends BaseDao{
	
	/**
	 *���Ȩ��
	 * @param pe
	 * @return
	 * @throws Exception
	 */
	public int addPower(PowerEntity pe) throws Exception {
		String sql="insert into power value(?,?)";
		//����BaseDao����ӷ���
		return this.update(sql,addPowerId(),pe.getPower_name());
	}
	
	/**
	 *ɾ��Ȩ��id 
	 * @param power_id
	 * @return
	 * @throws Exception
	 */
	public int deletePower(String power_id) throws Exception {
		String sql="delete from power where power_id=?";
		return this.update(sql, power_id);	
	}
	
	/**
	 *�޸�Ȩ�� 
	 * @param pe
	 * @return
	 * @throws Exception
	 */
	public int updatePower(PowerEntity pe,String oldname) throws Exception {
		String sql="update power set power_name=? where power_id=?";
		return this.update(sql, pe.getPower_id(),pe.getPower_name(),oldname);
	}
	
	/**
	 *��ѯ����Ȩ����Ϣ
	 * @return
	 * @throws Exception
	 */
	public List<PowerEntity> queryAllPower() throws Exception{
		String sql="select * from power";
		return this.query(sql,new PowerFillDao());
	}
	
	/**
	 * �Զ�����id
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
