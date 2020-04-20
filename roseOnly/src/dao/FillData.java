package dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
/**
 * 定义一个填充数据的接口
 * @author Administrator
 *
 */
public interface FillData<T> {
	/**
	 * fill方法用于填充数据
	 * ResultSet填充到List集合
	 * @param rs
	 * @return
	 * @throws SQLException 读取数据时会有异常
	 */
	public List<T> fill(ResultSet rs) throws SQLException;
}
