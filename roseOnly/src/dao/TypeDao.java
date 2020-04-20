package dao;

import java.util.List;

import entity.TypeEntity;

public class TypeDao extends BaseDao{
	//��ӡ���е���Ʒ���
	public List<TypeEntity> inputAll() throws Exception{
		String sql="select * from type";
		List<TypeEntity> lists=this.query(sql, new TypeFillDao(), null);
		return lists;
	}
	//����µ���Ʒ���
	public int add(String typeName) throws Exception {
		String sql="insert into type values(?,?)";
		return this.update(sql, this.getId(),typeName);
	}
	//����ID
	public String getId() throws Exception {
		String sql="select max(type_id) from type";
		String id = String.valueOf(this.queryOne(sql, null));
		if(id.equals("null")) {
			id = "tp001";
		}else {
			int i = Integer.parseInt(id.substring(2))+1;
			if(i<10) {
				id = "tp00"+i;
			}else if(i<100) {
				id = "tp0"+i;
			}else  {
				id = "tp"+i;
			}
		}
		return id;
	}
	//�ж���ӵ������Ƿ����
	public boolean panduan(String typeName) throws Exception {
		String sql="select * from type where type_name=?";
		//false�������� true����
		return this.query(sql, new TypeFillDao(), typeName).size()==0?false:true;
	}
	//ɾ����Ʒ���
	public int delete(String typeid) throws Exception{
		String sql="delete from type where type_id=?";
		return this.update(sql, typeid);
	}
	//�޸���Ʒ���
	public int xiugai(String newTypeName,String typeName) throws Exception{
		String sql="update type set type_name=? where type_name=?";
		return this.update(sql,newTypeName, typeName);
	}
	//������Ʒ���id
	public String cacthId(String typeName) throws Exception {
		String sql="select type_id from type where type_name=?";
		return (String)this.queryOne(sql, typeName); 
	}
	//������Ʒ�������
	public String getName(String id) throws Exception {
		String sql="select type_name from type where type_id=?";
		return (String)this.queryOne(sql, id);
	}
}
