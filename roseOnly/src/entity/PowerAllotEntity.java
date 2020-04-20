package entity;

public class PowerAllotEntity {
	private String title_id;
	private String power_id;
	public PowerAllotEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PowerAllotEntity(String title_id, String power_id) {
		super();
		this.title_id = title_id;
		this.power_id = power_id;
	}
	public String getTitle_id() {
		return title_id;
	}
	public void setTitle_id(String title_id) {
		this.title_id = title_id;
	}
	public String getPower_id() {
		return power_id;
	}
	public void setPower_id(String power_id) {
		this.power_id = power_id;
	}
	
}
