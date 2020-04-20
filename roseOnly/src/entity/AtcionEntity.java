package entity;

import java.sql.Timestamp;

public class AtcionEntity {
	private String atcion_id;
	private String employee_id;
	private Timestamp atcion_date;
	private String atcion_centes;
	public String getAtcion_id() {
		return atcion_id;
	}
	public void setAtcion_id(String atcion_id) {
		this.atcion_id = atcion_id;
	}
	public String getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(String employee_id) {
		this.employee_id = employee_id;
	}
	public Timestamp getAtcion_date() {
		return atcion_date;
	}
	public void setAtcion_date(Timestamp atcion_date) {
		this.atcion_date = atcion_date;
	}
	public String getAtcion_centes() {
		return atcion_centes;
	}
	public void setAtcion_centes(String atcion_centes) {
		this.atcion_centes = atcion_centes;
	}
	public AtcionEntity(String atcion_id, String employee_id, Timestamp atcion_date, String atcion_centes) {
		super();
		this.atcion_id = atcion_id;
		this.employee_id = employee_id;
		this.atcion_date = atcion_date;
		this.atcion_centes = atcion_centes;
	}
	public AtcionEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
}
