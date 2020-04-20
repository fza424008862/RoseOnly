package dao;

import java.util.List;

import entity.CommodityTypeEntity;

public class CommodityTypeDao extends BaseDao{
	//��ӡ���е���Ʒ����
	public List<CommodityTypeEntity> inputAll() throws Exception{
		String sql="select * from commoditytype";
		List<CommodityTypeEntity> lists=this.query(sql, new CommodityTypeFillDao(), null);
		return lists;
	}
	//����µ���Ʒ����
	public int add(String typeName) throws Exception {
		String sql="insert into commoditytype values(?,?,1)";
		return this.update(sql, this.getId(),typeName);
	}
	//����ID
	public String getId() throws Exception {
		String sql="select max(commodity_type_id) from commoditytype";
		String id = String.valueOf(this.queryOne(sql, null));
		if(id.equals("null")) {
			id = "ct001";
		}else {
			int i = Integer.parseInt(id.substring(2))+1;
			if(i<10) {
				id = "ct00"+i;
			}else if(i<100) {
				id = "ct0"+i;
			}else  {
				id = "ct"+i;
			}
		}
		return id;
	}
	//�ж���ӵ������Ƿ����
	public boolean panduan(String typeName) throws Exception {
		String sql="select * from commoditytype where commodity_type_name=?";
		//false�������� true����
		return this.query(sql, new CommodityTypeFillDao(), typeName).size()==0?false:true;
	}
	//ɾ����Ʒ����
	public int delete(String typeid) throws Exception{
		String sql="delete from commoditytype where commodity_type_id=?";
		return this.update(sql, typeid);
	}
	//�޸���Ʒ����
	public int xiugai(String newTypeName,String typeName) throws Exception{
		String sql="update commoditytype set commodity_type_name=? where commodity_type_name=?";
		return this.update(sql,newTypeName, typeName);
	}
	//������Ʒ����id
	public String cacthId(String typeName) throws Exception {
		String sql="select commodity_type_id from commoditytype where commodity_type_name=?";
		return (String)this.queryOne(sql, typeName); 
	}
	//������Ʒ��������
	public String getName(String id) throws Exception {
		String sql="select commodity_type_name from commoditytype where commodity_type_id=?";
		return (String)this.queryOne(sql, id);
	}
}
