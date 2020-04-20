package entity;

import java.sql.Date;

public class EmployeeEntity {
	private String employee_id;
	private String employee_name;
	private String employee_pass;
	private String title_id;
	private String contact;
	private Date date_in;
	private int state;
	
	public String getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(String employee_id) {
		this.employee_id = employee_id;
	}
	public String getEmployee_name() {
		return employee_name;
	}
	public void setEmployee_name(String employee_name) {
		this.employee_name = employee_name;
	}
	public String getEmployee_pass() {
		return employee_pass;
	}
	public void setEmployee_pass(String employee_pass) {
		this.employee_pass = employee_pass;
	}
	public String getTitle_id() {
		return title_id;
	}
	public void setTitle_id(String title_id) {
		this.title_id = title_id;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public Date getDate_in() {
		return date_in;
	}
	public void setDate_in(Date date_in) {
		this.date_in = date_in;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public EmployeeEntity(String employee_id, String employee_name, String employee_pass, String title_id,
			String contact, Date date_in, int state) {
		super();
		this.employee_id = employee_id;
		this.employee_name = employee_name;
		this.employee_pass = employee_pass;
		this.title_id = title_id;
		this.contact = contact;
		this.date_in = date_in;
		this.state = state;
	}
	public EmployeeEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
