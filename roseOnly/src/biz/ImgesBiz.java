package biz;

import java.util.List;

import dao.ImgesDao;
import entity.ImgesEntity;

public class ImgesBiz {
	ImgesDao idao=new ImgesDao();
	//���ͼƬ
	public int addImg(ImgesEntity x) throws Exception {
		return idao.addImg(x);
	}
	//id������Ʒ���ͼƬ
	public List<ImgesEntity> getImg(String shop_id) throws Exception{
		return idao.getImg(shop_id);
	}
	//������Ʒ���ͼƬ
	public List<ImgesEntity> houquImg() throws Exception{
		return idao.houquImg();
	}
}
