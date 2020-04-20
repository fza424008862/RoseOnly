package dao;

/**
 * 创建一个连库封装文件
 */
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BaseDao {
	// 声明连接对象
	private Connection con = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;

	/**
	 * 定义创建连接对象方法： 无返回，无参数 异常进行封装后抛出
	 * 
	 * @throws Exception
	 */
	public void createConnection() throws Exception {
		// 加载驱动
		try {
			Class.forName("com.mysql.jdbc.Driver");
			// 创建连接对象
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/supermarket", "root", "root");
		} catch (ClassNotFoundException e) {
			// 封装错误消息
			throw new Exception("驱动加载有误！");
		} catch (SQLException e) {
			e.printStackTrace();
			// 封装错误消息
			throw new Exception("数据库连接有误！");
		}
	}

	/**
	 * 关闭连接 异常进行封装后抛出
	 * 
	 * @throws Exception
	 */
	public void close() throws Exception {
		try {
			// 判断是否为空
			if (rs != null) {
				rs.close();
			}
			if (ps != null) {
				ps.close();
			}
			if (con != null) {
				con.close();
			}
		} catch (SQLException ex) {
			throw new Exception("关闭连接有误！");
		}
	}

	/**
	 * 添、删、改方法
	 * @param sql 语句
	 * @param objects  参数列表【动态参数列表】
	 * @return 影响行数
	 * @throws Exception
	 */
	public int update(String sql, Object... objects) throws Exception {
		// 调用创建statement方法
		this.createStatement(sql, objects);
		// 执行SQL语句，获得结果
		int row = ps.executeUpdate();
		// 调用关闭
		this.close();
		// 返回
		return row;
	}

	/**
	 * 查询方法
	 * @param sql 语句
	 * @param objects 参数列表
	 * @param fd 数据填充对象
	 * @return 集合
	 * @throws Exception
	 */
	public <T> List<T> query(String sql,FillData<T> fd,Object... objects) throws Exception {
		// 调用创建statement方法
		this.createStatement(sql, objects);
		// 执行，并获得结果
		rs = ps.executeQuery();
		//调用填充对象的方法，完成数据填充操作
		List<T> list=fd.fill(rs);
		//关闭
		this.close();
		// 返回结果集
		return list;
	}

	/**
	 * 创建执行对象，并绑定参数
	 * @param sql 语句
	 * @param objects 参数列表
	 * @throws Exception
	 */
	public void createStatement(String sql, Object... objects) throws Exception {
		// 调用连接
		this.createConnection();
		// 创建执行对象
		ps = con.prepareStatement(sql);
		// 绑定参数
		if (objects != null) {
			for (int i = 0; i < objects.length; i++) {
				ps.setObject(i + 1, objects[i]);
			}
		}
	}
	
	/**
	 * 查询单个值
	 * @param sql
	 * @param objects
	 * @return
	 * @throws Exception 
	 */
	public Object queryOne(String sql,Object...objects) throws Exception {
		//调用创建执行对象方法
		this.createStatement(sql, objects);
		//执行获得结果
		rs=ps.executeQuery();
		//读取rs的值
		Object obj=null;
		if(rs.next()) {
			//不知道列名，用序号表示
			obj=rs.getObject(1);
		}
		this.close();
		return obj;
	}
}
