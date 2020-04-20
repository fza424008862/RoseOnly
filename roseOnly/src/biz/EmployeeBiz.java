package biz;

import java.util.List;

import dao.EmployeeDao;
import entity.EmployeeEntity;
import entity.TitleEntity;

public class EmployeeBiz {
	//创建Dao对象
	EmployeeDao ed=new EmployeeDao();
	
	/**
	 *登录业务 
	 * @param ee
	 * @return
	 * @throws Exception 
	 */
	public int enter(EmployeeEntity ee) throws Exception {
		// TODO Auto-generated method stub
		return ed.enterEmployee(ee);
	}
	
	/**
	 * 添加员工
	 * @param ee
	 * @return
	 * @throws Exception
	 */
	public int addEmployee(EmployeeEntity ee) throws Exception {
		return ed.addEmployee(ee);
	}
	
	/**
	 * 删除员工id
	 * @param employee_id
	 * @return
	 * @throws Exception
	 */
	public int deleteEmployee(String employee_id) throws Exception {
		return ed.deleteEmployee(employee_id);
	}
	
	/**
	 * 修改员工
	 * @param ee
	 * @return
	 * @throws Exception
	 */
	public int updateEmployee(EmployeeEntity ee,String oldname) throws Exception {
		return ed.updateEmployee(ee,oldname);
	}
	
	/**
	 * 查询所有员工信息
	 * @return
	 * @throws Exception
	 */
	public List<EmployeeEntity> queryAllEmployee() throws Exception{
		return ed.queryAllEmployee();
	}
	
	/**
	 * 分页查询
	 * @param page
	 * 当前页码
	 * @return 每一页的数据
	 * @throws Exception
	 */
	/*public List<EmployeeEntity> queryAllEmployee(int page) throws Exception{
		//计算当前页的开始位置
		int x=(page - 1) * 2;
		//调用分页查询方法
		return ed.queryAllEmployee(x);
	}*/
	
	/**
	 * 获取总页码
	 * @return
	 * @throws Exception
	 */
	/*public int getEmployeePages() throws Exception {
		return ed.getEmployeePages();	
	}*/
}
