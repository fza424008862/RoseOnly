package biz;

import java.util.List;

import dao.TitleDao;
import entity.TitleEntity;

public class TitleBiz {
	//创建Dao对象
	TitleDao td=new TitleDao();
	
	/**
	 *添加角色 
	 * @param te
	 * @return
	 * @throws Exception
	 */
	public int addTitle(TitleEntity te) throws Exception {
		return td.addTitle(te);
		
	}
	
	/**
	 *删除角色id 
	 * @param title_id
	 * @return
	 * @throws Exception
	 */
	public int deleteTitle(String title_id) throws Exception {
		return td.deleteTitle(title_id);
		
	}
	
	/**
	 *修改角色 
	 * @param te
	 * @return
	 * @throws Exception
	 */
	public int updateTitle(TitleEntity te,String oldname) throws Exception {
		return td.updateTitle(te,oldname);	
	}
	
	/**
	 *查询所有角色信息 
	 * @return
	 * @throws Exception
	 */
	public List<TitleEntity> queryAllTitle() throws Exception{
		return td.queryAllTitle();	
	}
}
