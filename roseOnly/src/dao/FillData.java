package dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
/**
 * ����һ��������ݵĽӿ�
 * @author Administrator
 *
 */
public interface FillData<T> {
	/**
	 * fill���������������
	 * ResultSet��䵽List����
	 * @param rs
	 * @return
	 * @throws SQLException ��ȡ����ʱ�����쳣
	 */
	public List<T> fill(ResultSet rs) throws SQLException;
}
