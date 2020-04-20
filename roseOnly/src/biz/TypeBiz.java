package biz;

import java.util.List;

import dao.TypeDao;
import entity.TypeEntity;

public class TypeBiz {
	TypeDao tdao=new TypeDao();
	//��ӡ���е���Ʒ���
	public List<TypeEntity> inputAll() throws Exception{
		return tdao.inputAll();
	}
	//����µ���Ʒ���
	public int add(String typeName) throws Exception {
		return tdao.panduan(typeName)?0:tdao.add(typeName);
	}
	//ɾ����Ʒ���
	public int delete(String typeid) throws Exception{
		return tdao.delete(typeid);
	}
	//�޸���Ʒ���
	public int xiugai(String newTypeName,String typeName) throws Exception{
		return tdao.xiugai(newTypeName,typeName);
	}
	//������Ʒ���id
	public String cacthId(String typeName) throws Exception {
		return tdao.cacthId(typeName);
	}
	//������Ʒ�������
	public String getName(String id) throws Exception {
		return tdao.getName(id);
	}
}
