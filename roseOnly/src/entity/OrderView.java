package entity;

import java.sql.Timestamp;

public class OrderView {
	private String sale_id;
	private String pay_way;
	private String order_status;
	private Timestamp date_in;
	private double total_amount;
	private String commodity_name;
	private String commodity_id;
	private double price;
	private int number;
	private String pay_status;
	private String receiving_name;
	private String receiving_phone;
	private String address;
	private String imges_url;
	public String getImges_url() {
		return imges_url;
	}
	public void setImges_url(String imges_url) {
		this.imges_url = imges_url;
	}
	public String getSale_id() {
		return sale_id;
	}
	public void setSale_id(String sale_id) {
		this.sale_id = sale_id;
	}
	public String getPay_way() {
		return pay_way;
	}
	public void setPay_way(String pay_way) {
		this.pay_way = pay_way;
	}
	public String getOrder_status() {
		return order_status;
	}
	public void setOrder_status(String order_status) {
		this.order_status = order_status;
	}
	public Timestamp getDate_in() {
		return date_in;
	}
	public void setDate_in(Timestamp date_in) {
		this.date_in = date_in;
	}
	public double getTotal_amount() {
		return total_amount;
	}
	public void setTotal_amount(double total_amount) {
		this.total_amount = total_amount;
	}
	public String getCommodity_name() {
		return commodity_name;
	}
	public void setCommodity_name(String commodity_name) {
		this.commodity_name = commodity_name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getPay_status() {
		return pay_status;
	}
	public void setPay_status(String pay_status) {
		this.pay_status = pay_status;
	}
	public String getReceiving_name() {
		return receiving_name;
	}
	public void setReceiving_name(String receiving_name) {
		this.receiving_name = receiving_name;
	}
	public String getReceiving_phone() {
		return receiving_phone;
	}
	public void setReceiving_phone(String receiving_phone) {
		this.receiving_phone = receiving_phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	public String getCommodity_id() {
		return commodity_id;
	}
	public void setCommodity_id(String commodity_id) {
		this.commodity_id = commodity_id;
	}
	public OrderView(String sale_id, String pay_way, String order_status, Timestamp date_in, double total_amount,
			String commodity_name, String commodity_id, double price, int number, String pay_status,
			String receiving_name, String receiving_phone, String address, String imges_url) {
		this.sale_id = sale_id;
		this.pay_way = pay_way;
		this.order_status = order_status;
		this.date_in = date_in;
		this.total_amount = price*number;
		this.commodity_name = commodity_name;
		this.commodity_id = commodity_id;
		this.price = price;
		this.number = number;
		this.pay_status = pay_status;
		this.receiving_name = receiving_name;
		this.receiving_phone = receiving_phone;
		this.address = address;
		this.imges_url = imges_url;
	}
	public OrderView() {
	}
	
	
	
	
	
	
}
