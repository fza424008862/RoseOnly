package entity;

import java.sql.Timestamp;
import java.util.Date;

public class UserEntity {
	private String user_id;
	private String user_phone;
	private String user_pass;
	private int user_jf;
	private Timestamp date_in;
	private String user_sex;
	private String user_name;
	private Date user_birthday;
	private String user_address;
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_pass() {
		return user_pass;
	}
	public void setUser_pass(String user_pass) {
		this.user_pass = user_pass;
	}
	public int getUser_jf() {
		return user_jf;
	}
	public void setUser_jf(int user_jf) {
		this.user_jf = user_jf;
	}
	public Timestamp getDate_in() {
		return date_in;
	}
	public void setDate_in(Timestamp date_in) {
		this.date_in = date_in;
	}
	public String getUser_sex() {
		return user_sex;
	}
	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public Date getUser_birthday() {
		return user_birthday;
	}
	public void setUser_birthday(Date user_birthday) {
		this.user_birthday = user_birthday;
	}
	public String getUser_address() {
		return user_address;
	}
	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
	public UserEntity(String user_id, String user_phone, String user_pass, int user_jf, Timestamp date_in,
			String user_sex, String user_name, Date user_birthday, String user_address) {
		super();
		this.user_id = user_id;
		this.user_phone = user_phone;
		this.user_pass = user_pass;
		this.user_jf = user_jf;
		this.date_in = date_in;
		this.user_sex = user_sex;
		this.user_name = user_name;
		this.user_birthday = user_birthday;
		this.user_address = user_address;
	}
	public UserEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
}
