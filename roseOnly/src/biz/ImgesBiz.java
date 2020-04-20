package biz;

import java.util.List;

import dao.ImgesDao;
import entity.ImgesEntity;

public class ImgesBiz {
	ImgesDao idao=new ImgesDao();
	//添加图片
	public int addImg(ImgesEntity x) throws Exception {
		return idao.addImg(x);
	}
	//id返回商品相关图片
	public List<ImgesEntity> getImg(String shop_id) throws Exception{
		return idao.getImg(shop_id);
	}
	//返回商品相关图片
	public List<ImgesEntity> houquImg() throws Exception{
		return idao.houquImg();
	}
}
