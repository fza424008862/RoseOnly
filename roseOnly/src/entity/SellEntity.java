package entity;

import java.sql.Date;

public class SellEntity {
	private String sell_id;
	private String sale_id;
	private String commodity_id;
	private int number;
	private double price;
	private double subtotal;
	public String getSell_id() {
		return sell_id;
	}
	public void setSell_id(String sell_id) {
		this.sell_id = sell_id;
	}
	public String getSale_id() {
		return sale_id;
	}
	public void setSale_id(String sale_id) {
		this.sale_id = sale_id;
	}
	public String getCommodity_id() {
		return commodity_id;
	}
	public void setCommodity_id(String commodity_id) {
		this.commodity_id = commodity_id;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public double getSubtotal() {
		return subtotal;
	}
	public void setSubtotal(double subtotal) {
		this.subtotal = subtotal;
	}
	public SellEntity(String sell_id, String sale_id, String commodity_id, int number, double price, double subtotal) {
		super();
		this.sell_id = sell_id;
		this.sale_id = sale_id;
		this.commodity_id = commodity_id;
		this.number = number;
		this.price = price;
		this.subtotal = subtotal;
	}
	public SellEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
}
