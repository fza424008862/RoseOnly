package entity;

public class ShoppingCarEntity {
	private String shopping_id;
	private String user_id;
	private String commodity_id;
	private String series_id;
	private String commodity_type_id;
	private String type_id;
	private String specifications_id;
	private int number;
	private double price;
	private double total_prices;
	private int state;
	private String commodity_name;
	public String getShopping_id() {
		return shopping_id;
	}
	public void setShopping_id(String shopping_id) {
		this.shopping_id = shopping_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getCommodity_id() {
		return commodity_id;
	}
	public void setCommodity_id(String commodity_id) {
		this.commodity_id = commodity_id;
	}
	public String getSeries_id() {
		return series_id;
	}
	public void setSeries_id(String series_id) {
		this.series_id = series_id;
	}
	public String getCommodity_type_id() {
		return commodity_type_id;
	}
	public void setCommodity_type_id(String commodity_type_id) {
		this.commodity_type_id = commodity_type_id;
	}
	public String getType_id() {
		return type_id;
	}
	public void setType_id(String type_id) {
		this.type_id = type_id;
	}
	public String getSpecifications_id() {
		return specifications_id;
	}
	public void setSpecifications_id(String specifications_id) {
		this.specifications_id = specifications_id;
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
	public double getTotal_prices() {
		return total_prices;
	}
	public void setTotal_prices(double total_prices) {
		this.total_prices = total_prices;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getCommodity_name() {
		return commodity_name;
	}
	public void setCommodity_name(String commodity_name) {
		this.commodity_name = commodity_name;
	}
	public ShoppingCarEntity(String shopping_id, String user_id, String commodity_id, String series_id,
			String commodity_type_id, String type_id, String specifications_id, int number, double price,
			double total_prices, int state, String commodity_name) {
		super();
		this.shopping_id = shopping_id;
		this.user_id = user_id;
		this.commodity_id = commodity_id;
		this.series_id = series_id;
		this.commodity_type_id = commodity_type_id;
		this.type_id = type_id;
		this.specifications_id = specifications_id;
		this.number = number;
		this.price = price;
		this.total_prices = total_prices;
		this.state = state;
		this.commodity_name = commodity_name;
	}
	public ShoppingCarEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
