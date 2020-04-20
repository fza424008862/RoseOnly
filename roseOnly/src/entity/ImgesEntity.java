package entity;

public class ImgesEntity {
	private String imges_id;
	private String imges_url;
	private int imges_type;
	private String commodity_id;
	public String getImges_id() {
		return imges_id;
	}
	public void setImges_id(String imges_id) {
		this.imges_id = imges_id;
	}
	public String getImges_url() {
		return imges_url;
	}
	public void setImges_url(String imges_url) {
		this.imges_url = imges_url;
	}
	public int getImges_type() {
		return imges_type;
	}
	public void setImges_type(int imges_type) {
		this.imges_type = imges_type;
	}
	public String getCommodity_id() {
		return commodity_id;
	}
	public void setCommodity_id(String commodity_id) {
		this.commodity_id = commodity_id;
	}
	public ImgesEntity(String imges_id, String imges_url, int imges_type, String commodity_id) {
		super();
		this.imges_id = imges_id;
		this.imges_url = imges_url;
		this.imges_type = imges_type;
		this.commodity_id = commodity_id;
	}
	public ImgesEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
}
