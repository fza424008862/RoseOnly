package dao;

import java.util.List;

import entity.ImgesEntity;

public class ImgesDao extends BaseDao{
	public int addImg(ImgesEntity x) throws Exception {
		String sql="insert into imges values(?,?,?,?)";
		return this.update(sql, this.getId(),x.getImges_url(),x.getImges_type(),x.getCommodity_id());
	}
	//自增ID
	public String getId() throws Exception {
		String sql="select max(imges_id) from imges";
		String id = String.valueOf(this.queryOne(sql, null));
		if(id.equals("null")) {
			id = "img001";
		}else {
			int i = Integer.parseInt(id.substring(3))+1;
			if(i<10) {
				id = "img00"+i;
			}else if(i<100) {
				id = "img0"+i;
			}else  {
				id = "img"+i;
			}
		}
		return id;
	}
	//id返回商品相关图片
	public List<ImgesEntity> getImg(String shop_id) throws Exception{
		String sql="select * from imges where commodity_id=? and imges_type='2'";
		return this.query(sql, new ImgesFillDao(), shop_id);
	}
	//返回商品主图图片
	public List<ImgesEntity> houquImg() throws Exception{
		String sql="select * from imges where imges_type='1'";
		return this.query(sql, new ImgesFillDao());
	}
}
