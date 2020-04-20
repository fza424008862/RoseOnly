package biz;

import java.util.List;

import dao.SpecificationsDao;
import entity.SpecificationsEntity;

public class SpecificationsBiz {
	SpecificationsDao sdao=new SpecificationsDao();
	//��ӡ���е���Ʒ���
	public List<SpecificationsEntity> inputAll() throws Exception{
		return sdao.inputAll();
	}
	//����µ���Ʒ���
	public int add(String typeName) throws Exception {
		return sdao.panduan(typeName)?0:sdao.add(typeName);
	}
	//ɾ����Ʒ���
	public int delete(String typeid) throws Exception{
		return sdao.delete(typeid);
	}
	//�޸���Ʒ���
	public int xiugai(String newTypeName,String typeName) throws Exception{
		return sdao.xiugai(newTypeName,typeName);
	}
	//������Ʒ���id
	public String cacthId(String typeName) throws Exception {
		return sdao.cacthId(typeName);
	}
	//������Ʒ��� ����
	public String getName(String id) throws Exception {
		return sdao.getName(id);
	}
}
