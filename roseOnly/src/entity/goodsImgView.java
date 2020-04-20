package entity;

public class goodsImgView {
	private String sale_id;
	private String sell_id;
	private String commodity_id;
	private String imges_url;
	public String getSale_id() {
		return sale_id;
	}
	public void setSale_id(String sale_id) {
		this.sale_id = sale_id;
	}
	public String getSell_id() {
		return sell_id;
	}
	public void setSell_id(String sell_id) {
		this.sell_id = sell_id;
	}
	public String getCommodity_id() {
		return commodity_id;
	}
	public void setCommodity_id(String commodity_id) {
		this.commodity_id = commodity_id;
	}
	public String getImges_url() {
		return imges_url;
	}
	public void setImges_url(String imges_url) {
		this.imges_url = imges_url;
	}
	public goodsImgView(String sale_id, String sell_id, String commodity_id, String imges_url) {
		this.sale_id = sale_id;
		this.sell_id = sell_id;
		this.commodity_id = commodity_id;
		this.imges_url = imges_url;
	}
	public goodsImgView() {
		
	}
	
	
}
