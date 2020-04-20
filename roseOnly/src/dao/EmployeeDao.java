package dao;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

import org.eclipse.jdt.internal.compiler.ast.ThisReference;

import entity.EmployeeEntity;
import entity.TitleEntity;

public class EmployeeDao extends BaseDao{
	
	/**
	 * @throws Exception 
	 * 登录sql语句操作
	 * @param ce
	 * @return
	 * @throws 
	 */
	public int enterEmployee(EmployeeEntity ee) throws Exception {
		String sql="select count(*) from employee where employee_name=? and employee_pass=?";
		Object x=this.queryOne(sql,ee.getEmployee_name(),ee.getEmployee_pass());
		return x==null?0:Integer.parseInt(String.valueOf(x));
	}
	
	/**
	 * 添加员工
	 * @param ee
	 * @return
	 * @throws Exception
	 */
	public int addEmployee(EmployeeEntity ee) throws Exception {
		String sql="insert into employee value(?,?,?,?,?,now(),0)";
		//调用BaseDao的添加方法
		return this.update(sql ,addEmployeeId(),ee.getEmployee_name(),
				ee.getEmployee_pass(),ee.getTitle_id(),ee.getContact());
	}
	
	/**
	 * 删除员工id
	 * @param employee_id
	 * @return
	 * @throws Exception
	 */
	/*public int deleteEmployee(String employee_id) throws Exception {
		String sql="delete from employee where employee_id=?";
		return this.update(sql, employee_id);
	}*/
	
	/**
	 * 逻辑删除
	 * @param employee_id
	 * @return
	 * @throws Exception
	 */
	public int deleteEmployee(String employee_id) throws Exception {
		String sql="update employee set state=1 where employee_id=?";
		return this.update(sql, employee_id);	
	}
	
	/**
	 * 修改员工
	 * @param ee
	 * @return
	 * @throws Exception
	 */
	public int updateEmployee(EmployeeEntity ee,String oldname) throws Exception{
		String sql="update employee set employee_name=?,employee_pass=?,title_id=?,contact=? where employee_name=?";
		return this.update(sql ,ee.getEmployee_name(),
				ee.getEmployee_pass(),ee.getTitle_id(),ee.getContact(),oldname);
		
	}
	
	/**
	 * 查询所有员工信息
	 * @return
	 * @throws Exception
	 */
	public List<EmployeeEntity> queryAllEmployee() throws Exception {
		String sql="select * from employee";
		return this.query(sql,new EmployeeFillDao());
		
	}
	
	/**
	 * 员工分页查询
	 * 
	 * @param page
	 *            当前页的开始位置
	 * @return
	 * @throws Exception 
	 */
	/*public List<EmployeeEntity> queryAllEmployee(int page) throws Exception{
		// 拼分页的sql语句
		String sql="select * from employee limit" + page + ",5";
		try {
			return this.query(sql,new EmployeeFillDao());
		} catch (ClassNotFoundException e) {
			throw new ClassNotFoundException("分页查询错误!驱动找不到.");
		} catch (SQLException e) {
			e.printStackTrace();
			throw new SQLException("分页查询错误!语法有误!");
		}	
	}*/
	
	/**
	 * 获取总页数
	 * @return
	 * @throws Exception 
	 */
	/*public int getEmployeePages() throws Exception {
		String sql="select count(*） from employee";
		Object obj=this.queryOne(sql);
		if(obj!=null) {
			//总条数
			int rows=Integer.parseInt( String.valueOf(obj));
			return rows%5==0?rows/5:(rows/5+1);
		}else {
			return 0;
		}	
	}*/
	
	/**
	 * 自动生成id
	 * @return
	 * @throws Exception
	 */
	public String addEmployeeId() throws Exception {
		String sql="select max(employee_id) from employee";
		String id=String.valueOf(this.queryOne(sql, null));
		if(id.equals("null")) {
				id="emp001";
		}else {
				int y=Integer.parseInt(id.substring(3))+1;
				if(y<10) {
					id="emp00"+y;
				}else if(y<100) {
					id="emp0"+y;
				}else {
					id="emp"+y;
				}
		}
		return id;
	}
}
