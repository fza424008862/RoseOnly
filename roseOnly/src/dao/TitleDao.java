package dao;

import java.util.List;

import entity.TitleEntity;

public class TitleDao extends BaseDao{
	/**
	 * 添加角色
	 * @param te
	 * @return
	 * @throws Exception
	 */
	public int addTitle(TitleEntity te) throws Exception {
		String sql="insert into title values(?,?)";
		//调用BaseDao的添加方法
		return this.update(sql, this.addTitleId(),te.getTitle_name());
	}
	
	/**
	 *删除角色id
	 * @param title_id
	 * @return
	 * @throws Exception
	 */
	public int deleteTitle(String title_id) throws Exception {
		String sql="delete from title where title_id=?";
		return this.update(sql, title_id);
	}
	
	/**
	 *修改角色 
	 * @param te
	 * @return
	 * @throws Exception
	 */
	public int updateTitle(TitleEntity te,String oldname) throws Exception {
		String sql="update title set title_name=? where title_id=?";
		return this.update(sql, te.getTitle_id(),te.getTitle_name(),oldname);	
	}
	
	/**
	 *查询所有角色信息 
	 * @return
	 * @throws Exception
	 */
	public List<TitleEntity> queryAllTitle() throws Exception{
		String sql="select * from title";
		return this.query(sql, new TitleFillDao());
	}
	
	/**
	 * 自动生成id
	 * @return
	 * @throws Exception
	 */
	public String addTitleId() throws Exception {
		String sql="select max(title_id) from title";
		String id=String.valueOf(this.queryOne(sql, null));
		if(id.equals("null")) {
				id="tit001";
		}else {
				int y=Integer.parseInt(id.substring(3))+1;
				if(y<10) {
					id="tit00"+y;
				}else if(y<100) {
					id="tit0"+y;
				}else {
					id="tit"+y;
				}
		}
		return id;
	}
}

