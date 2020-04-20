package entity;

public class CommodityTypeEntity {
	private String commodity_type_id;
	private String commodity_type_name;
	private int state;
	public CommodityTypeEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CommodityTypeEntity(String commodity_type_id, String commodity_type_name, int state) {
		super();
		this.commodity_type_id = commodity_type_id;
		this.commodity_type_name = commodity_type_name;
		this.state = state;
	}
	public String getCommodity_type_id() {
		return commodity_type_id;
	}
	public void setCommodity_type_id(String commodity_type_id) {
		this.commodity_type_id = commodity_type_id;
	}
	public String getCommodity_type_name() {
		return commodity_type_name;
	}
	public void setCommodity_type_name(String commodity_type_name) {
		this.commodity_type_name = commodity_type_name;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	
}
