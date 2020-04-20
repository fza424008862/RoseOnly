package biz;

import java.util.List;

import dao.CommodityTypeDao;
import entity.CommodityTypeEntity;

public class CommodityTypeBiz {
	CommodityTypeDao ctdao=new CommodityTypeDao();
	//��ӡ���е���Ʒ����
	public List<CommodityTypeEntity> inputAll() throws Exception{
		return ctdao.inputAll();
	}
	//����µ���Ʒ����
	public int add(String typeName) throws Exception {
		return ctdao.panduan(typeName)?0:ctdao.add(typeName);
	}
	//ɾ����Ʒ����
	public int delete(String typeid) throws Exception{
		return ctdao.delete(typeid);
	}
	//�޸���Ʒ����
	public int xiugai(String newTypeName,String typeName) throws Exception{
		return ctdao.xiugai(newTypeName,typeName);
	}
	//������Ʒ����id
	public String cacthId(String typeName) throws Exception {
		return ctdao.cacthId(typeName);
	}
	//������Ʒ��������
	public String getName(String id) throws Exception {
		return ctdao.getName(id);
	}
}
