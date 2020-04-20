package biz;

import java.util.List;

import dao.SeriesDao;
import entity.SeriesEntity;

public class SeriesBiz {
	SeriesDao sdao=new SeriesDao();
	//��ӡ���е���Ʒϵ��
	public List<SeriesEntity> inputAll() throws Exception{
		return sdao.inputAll();
	}
	//����µ���Ʒϵ��
	public int add(String typeName) throws Exception {
		return sdao.panduan(typeName)?0:sdao.add(typeName);
	}
	//ɾ����Ʒϵ��
	public int delete(String typeid) throws Exception{
		return sdao.delete(typeid);
	}
	//�޸���Ʒϵ��
	public int xiugai(String newTypeName,String typeName) throws Exception{
		return sdao.xiugai(newTypeName,typeName);
	}
	//������Ʒϵ��id
	public String cacthId(String typeName) throws Exception {
		return sdao.cacthId(typeName);
	}
	//������Ʒϵ������
	public String getName(String id) throws Exception {
		return sdao.getName(id);
	}
}
