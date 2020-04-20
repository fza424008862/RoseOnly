package entity;

import java.sql.Timestamp;

public class SaleEntity {
	private String sale_id;
	private String user_id;
	private int order_status;
	private double total_amount;
	private Timestamp date_in;
	private String pay_way;
	private Timestamp pay_date;
	private int pay_status;
	private String receiving_phone;
	private String receiving_name;
	private Timestamp over_date;
	private String address;
	public String getSale_id() {
		return sale_id;
	}
	public void setSale_id(String sale_id) {
		this.sale_id = sale_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getOrder_status() {
		return order_status;
	}
	public void setOrder_status(int order_status) {
		this.order_status = order_status;
	}
	public double getTotal_amount() {
		return total_amount;
	}
	public void setTotal_amount(double total_amount) {
		this.total_amount = total_amount;
	}
	public Timestamp getDate_in() {
		return date_in;
	}
	public void setDate_in(Timestamp date_in) {
		this.date_in = date_in;
	}
	public String getPay_way() {
		return pay_way;
	}
	public void setPay_way(String pay_way) {
		this.pay_way = pay_way;
	}
	public Timestamp getPay_date() {
		return pay_date;
	}
	public void setPay_date(Timestamp pay_date) {
		this.pay_date = pay_date;
	}
	public int getPay_status() {
		return pay_status;
	}
	public void setPay_status(int pay_status) {
		this.pay_status = pay_status;
	}
	public String getReceiving_phone() {
		return receiving_phone;
	}
	public void setReceiving_phone(String receiving_phone) {
		this.receiving_phone = receiving_phone;
	}
	public String getReceiving_name() {
		return receiving_name;
	}
	public void setReceiving_name(String receiving_name) {
		this.receiving_name = receiving_name;
	}
	public Timestamp getOver_date() {
		return over_date;
	}
	public void setOver_date(Timestamp over_date) {
		this.over_date = over_date;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public SaleEntity(String sale_id, String user_id, int order_status, double total_amount, Timestamp date_in,
			String pay_way, Timestamp pay_date, int pay_status, String receiving_phone, String receiving_name, Timestamp over_date,
			String address) {
		super();
		this.sale_id = sale_id;
		this.user_id = user_id;
		this.order_status = order_status;
		this.total_amount = total_amount;
		this.date_in = date_in;
		this.pay_way = pay_way;
		this.pay_date = pay_date;
		this.pay_status = pay_status;
		this.receiving_phone = receiving_phone;
		this.receiving_name = receiving_name;
		this.over_date = over_date;
		this.address = address;
	}
	public SaleEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
}
