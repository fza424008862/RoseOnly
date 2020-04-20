package entity;

public class ShopCarView {
	private String commodity_name;
	private double price;
	private int number;
	private double total_price;
	private String pp;
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
	public double getTotal_price() {
		return total_price;
	}
	public void setTotal_price() {
		this.total_price = this.number*this.price;
	}
	
	
	public String getPp() {
		return pp;
	}
	public void setPp(String pp) {
		this.pp = pp;
	}
	public ShopCarView(String commodity_name, double price, String pp, int number) {
		super();
		this.commodity_name = commodity_name;
		this.price = price;
		this.pp=pp;
		this.number = number;
		this.setTotal_price();
	}
	public ShopCarView() {
		
	}

	
	

	
	
}
