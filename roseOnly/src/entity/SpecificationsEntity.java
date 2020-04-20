package entity;

public class SpecificationsEntity {
	private String specifications_id;
	private String specifications_name;
	private int state;
	public SpecificationsEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SpecificationsEntity(String specifications_id, String specifications_name, int state) {
		super();
		this.specifications_id = specifications_id;
		this.specifications_name = specifications_name;
		this.state = state;
	}
	public String getSpecifications_id() {
		return specifications_id;
	}
	public void setSpecifications_id(String specifications_id) {
		this.specifications_id = specifications_id;
	}
	public String getSpecifications_name() {
		return specifications_name;
	}
	public void setSpecifications_name(String specifications_name) {
		this.specifications_name = specifications_name;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	
}
