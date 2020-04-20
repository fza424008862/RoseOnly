package biz;

import java.util.List;

import dao.EmployeeDao;
import entity.EmployeeEntity;
import entity.TitleEntity;

public class EmployeeBiz {
	//����Dao����
	EmployeeDao ed=new EmployeeDao();
	
	/**
	 *��¼ҵ�� 
	 * @param ee
	 * @return
	 * @throws Exception 
	 */
	public int enter(EmployeeEntity ee) throws Exception {
		// TODO Auto-generated method stub
		return ed.enterEmployee(ee);
	}
	
	/**
	 * ���Ա��
	 * @param ee
	 * @return
	 * @throws Exception
	 */
	public int addEmployee(EmployeeEntity ee) throws Exception {
		return ed.addEmployee(ee);
	}
	
	/**
	 * ɾ��Ա��id
	 * @param employee_id
	 * @return
	 * @throws Exception
	 */
	public int deleteEmployee(String employee_id) throws Exception {
		return ed.deleteEmployee(employee_id);
	}
	
	/**
	 * �޸�Ա��
	 * @param ee
	 * @return
	 * @throws Exception
	 */
	public int updateEmployee(EmployeeEntity ee,String oldname) throws Exception {
		return ed.updateEmployee(ee,oldname);
	}
	
	/**
	 * ��ѯ����Ա����Ϣ
	 * @return
	 * @throws Exception
	 */
	public List<EmployeeEntity> queryAllEmployee() throws Exception{
		return ed.queryAllEmployee();
	}
	
	/**
	 * ��ҳ��ѯ
	 * @param page
	 * ��ǰҳ��
	 * @return ÿһҳ������
	 * @throws Exception
	 */
	/*public List<EmployeeEntity> queryAllEmployee(int page) throws Exception{
		//���㵱ǰҳ�Ŀ�ʼλ��
		int x=(page - 1) * 2;
		//���÷�ҳ��ѯ����
		return ed.queryAllEmployee(x);
	}*/
	
	/**
	 * ��ȡ��ҳ��
	 * @return
	 * @throws Exception
	 */
	/*public int getEmployeePages() throws Exception {
		return ed.getEmployeePages();	
	}*/
}
