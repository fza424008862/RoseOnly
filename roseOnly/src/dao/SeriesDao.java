package dao;

import java.util.List;

import entity.SeriesEntity;

public class SeriesDao extends BaseDao{
	//��ӡ���е���Ʒϵ��
	public List<SeriesEntity> inputAll() throws Exception{
		String sql="select * from series";
		List<SeriesEntity> lists=this.query(sql, new SeriesFillDao(), null);
		return lists;
	}
	//����µ���Ʒϵ��
	public int add(String typeName) throws Exception {
		String sql="insert into series values(?,?,1)";
		return this.update(sql, this.getId(),typeName);
	}
	//����ID
	public String getId() throws Exception {
		String sql="select max(series_id) from series";
		String id = String.valueOf(this.queryOne(sql, null));
		if(id.equals("null")) {
			id = "se001";
		}else {
			int i = Integer.parseInt(id.substring(2))+1;
			if(i<10) {
				id = "se00"+i;
			}else if(i<100) {
				id = "se0"+i;
			}else  {
				id = "se"+i;
			}
		}
		return id;
	}
	//�ж���ӵ������Ƿ����
	public boolean panduan(String typeName) throws Exception {
		String sql="select * from series where series_name=?";
		//false�������� true����
		return this.query(sql, new CommodityTypeFillDao(), typeName).size()==0?false:true;
	}
	//ɾ����Ʒϵ��
	public int delete(String typeid) throws Exception{
		String sql="delete from series where series_id=?";
		return this.update(sql, typeid);
	}
	//�޸���Ʒϵ��
	public int xiugai(String newTypeName,String typeName) throws Exception{
		String sql="update series set series_name=? where series_name=?";
		return this.update(sql,newTypeName, typeName);
	}
	//������Ʒϵ��id
	public String cacthId(String typeName) throws Exception {
		String sql="select series_id from series where series_name=?";
		return (String)this.queryOne(sql, typeName); 
	}
	//������Ʒ�������
	public String getName(String id) throws Exception {
		String sql="select series_name from series where series_id=?";
		return (String)this.queryOne(sql, id);
	}
}
