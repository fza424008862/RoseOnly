package dao;

/**
 * ����һ�������װ�ļ�
 */
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BaseDao {
	// �������Ӷ���
	private Connection con = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;

	/**
	 * ���崴�����Ӷ��󷽷��� �޷��أ��޲��� �쳣���з�װ���׳�
	 * 
	 * @throws Exception
	 */
	public void createConnection() throws Exception {
		// ��������
		try {
			Class.forName("com.mysql.jdbc.Driver");
			// �������Ӷ���
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/supermarket", "root", "root");
		} catch (ClassNotFoundException e) {
			// ��װ������Ϣ
			throw new Exception("������������");
		} catch (SQLException e) {
			e.printStackTrace();
			// ��װ������Ϣ
			throw new Exception("���ݿ���������");
		}
	}

	/**
	 * �ر����� �쳣���з�װ���׳�
	 * 
	 * @throws Exception
	 */
	public void close() throws Exception {
		try {
			// �ж��Ƿ�Ϊ��
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
			throw new Exception("�ر���������");
		}
	}

	/**
	 * ��ɾ���ķ���
	 * @param sql ���
	 * @param objects  �����б���̬�����б�
	 * @return Ӱ������
	 * @throws Exception
	 */
	public int update(String sql, Object... objects) throws Exception {
		// ���ô���statement����
		this.createStatement(sql, objects);
		// ִ��SQL��䣬��ý��
		int row = ps.executeUpdate();
		// ���ùر�
		this.close();
		// ����
		return row;
	}

	/**
	 * ��ѯ����
	 * @param sql ���
	 * @param objects �����б�
	 * @param fd ����������
	 * @return ����
	 * @throws Exception
	 */
	public <T> List<T> query(String sql,FillData<T> fd,Object... objects) throws Exception {
		// ���ô���statement����
		this.createStatement(sql, objects);
		// ִ�У�����ý��
		rs = ps.executeQuery();
		//����������ķ������������������
		List<T> list=fd.fill(rs);
		//�ر�
		this.close();
		// ���ؽ����
		return list;
	}

	/**
	 * ����ִ�ж��󣬲��󶨲���
	 * @param sql ���
	 * @param objects �����б�
	 * @throws Exception
	 */
	public void createStatement(String sql, Object... objects) throws Exception {
		// ��������
		this.createConnection();
		// ����ִ�ж���
		ps = con.prepareStatement(sql);
		// �󶨲���
		if (objects != null) {
			for (int i = 0; i < objects.length; i++) {
				ps.setObject(i + 1, objects[i]);
			}
		}
	}
	
	/**
	 * ��ѯ����ֵ
	 * @param sql
	 * @param objects
	 * @return
	 * @throws Exception 
	 */
	public Object queryOne(String sql,Object...objects) throws Exception {
		//���ô���ִ�ж��󷽷�
		this.createStatement(sql, objects);
		//ִ�л�ý��
		rs=ps.executeQuery();
		//��ȡrs��ֵ
		Object obj=null;
		if(rs.next()) {
			//��֪������������ű�ʾ
			obj=rs.getObject(1);
		}
		this.close();
		return obj;
	}
}
