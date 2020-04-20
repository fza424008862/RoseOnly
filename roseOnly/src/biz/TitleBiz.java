package biz;

import java.util.List;

import dao.TitleDao;
import entity.TitleEntity;

public class TitleBiz {
	//����Dao����
	TitleDao td=new TitleDao();
	
	/**
	 *��ӽ�ɫ 
	 * @param te
	 * @return
	 * @throws Exception
	 */
	public int addTitle(TitleEntity te) throws Exception {
		return td.addTitle(te);
		
	}
	
	/**
	 *ɾ����ɫid 
	 * @param title_id
	 * @return
	 * @throws Exception
	 */
	public int deleteTitle(String title_id) throws Exception {
		return td.deleteTitle(title_id);
		
	}
	
	/**
	 *�޸Ľ�ɫ 
	 * @param te
	 * @return
	 * @throws Exception
	 */
	public int updateTitle(TitleEntity te,String oldname) throws Exception {
		return td.updateTitle(te,oldname);	
	}
	
	/**
	 *��ѯ���н�ɫ��Ϣ 
	 * @return
	 * @throws Exception
	 */
	public List<TitleEntity> queryAllTitle() throws Exception{
		return td.queryAllTitle();	
	}
}
