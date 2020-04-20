package entity;

public class RoleAllotEntity {
	private String employee_id;
	private String title_id;
	public RoleAllotEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
	public RoleAllotEntity(String employee_id, String title_id) {
		super();
		this.employee_id = employee_id;
		this.title_id = title_id;
	}
	public String getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(String employee_id) {
		this.employee_id = employee_id;
	}
	public String getTitle_id() {
		return title_id;
	}
	public void setTitle_id(String title_id) {
		this.title_id = title_id;
	}
	
}
