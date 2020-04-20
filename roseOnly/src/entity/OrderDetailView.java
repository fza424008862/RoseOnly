package entity;

public class OrderDetailView {
	private String commodity_name;
	private double price;
	private int number;
	private String pay_status;
	private String receiving_name;
	private String receiving_phone;
	private String address;
	private String sale_id;
	private String order_status;
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
	public String getSale_id() {
		return sale_id;
	}
	public void setSale_id(String sale_id) {
		this.sale_id = sale_id;
	}
	public String getOrder_status() {
		return order_status;
	}
	public void setOrder_status(String order_status) {
		this.order_status = order_status;
	}
	public OrderDetailView(String commodity_name, double price, int number, String pay_status, String receiving_name,
			String receiving_phone, String address, String sale_id, String order_status) {
		super();
		this.commodity_name = commodity_name;
		this.price = price;
		this.number = number;
		this.pay_status = pay_status;
		this.receiving_name = receiving_name;
		this.receiving_phone = receiving_phone;
		this.address = address;
		this.sale_id = sale_id;
		this.order_status = order_status;
	}
	public OrderDetailView() {
		
	}
	
	
	
}
