package dao;

import java.util.List;

import entity.SpecificationsEntity;

public class SpecificationsDao extends BaseDao{
	//��ӡ���е���Ʒ���
	public List<SpecificationsEntity> inputAll() throws Exception{
		String sql="select * from specifications";
		List<SpecificationsEntity> lists=this.query(sql, new SpecificationsFillDao(), null);
		return lists;
	}
	//����µ���Ʒ���
	public int add(String typeName) throws Exception {
		String sql="insert into specifications values(?,?,1)";
		return this.update(sql, this.getId(),typeName);
	}
	//����ID
	public String getId() throws Exception {
		String sql="select max(specifications_id) from specifications";
		String id = String.valueOf(this.queryOne(sql, null));
		if(id.equals("null")) {
			id = "sp001";
		}else {
			int i = Integer.parseInt(id.substring(2))+1;
			if(i<10) {
				id = "sp00"+i;
			}else if(i<100) {
				id = "sp0"+i;
			}else  {
				id = "sp"+i;
			}
		}
		return id;
	}
	//�ж���ӵ������Ƿ����
	public boolean panduan(String typeName) throws Exception {
		String sql="select * from specifications where specifications_name=?";
		//false�������� true����
		return this.query(sql, new CommodityTypeFillDao(), typeName).size()==0?false:true;
	}
	//ɾ����Ʒ���
	public int delete(String typeid) throws Exception{
		String sql="delete from specifications where specifications_id=?";
		return this.update(sql, typeid);
	}
	//�޸���Ʒ���
	public int xiugai(String newTypeName,String typeName) throws Exception{
		String sql="update specifications set specifications_name=? where specifications_name=?";
		return this.update(sql,newTypeName, typeName);
	}
	//������Ʒ���id
	public String cacthId(String typeName) throws Exception {
		String sql="select specifications_id from specifications where specifications_name=?";
		return (String)this.queryOne(sql, typeName); 
	}
	//������Ʒ�������
	public String getName(String id) throws Exception {
		String sql="select specifications_name from specifications where specifications_id=?";
		return (String)this.queryOne(sql, id);
	}
}
