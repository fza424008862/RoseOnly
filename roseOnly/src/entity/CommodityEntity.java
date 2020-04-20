package entity;

public class CommodityEntity {
	private String commodity_id;
	private String commodity_type_id;
	private String series_id;
	private String type_id;
	private String specifications_id;
	private double goods_stock_price;
	private double price;
	private String describe_one;
	private String describe_two;
	private String commodity_name;
	private int total_number;
	private int surplus_number;
	public String getCommodity_id() {
		return commodity_id;
	}
	public void setCommodity_id(String commodity_id) {
		this.commodity_id = commodity_id;
	}
	public String getCommodity_type_id() {
		return commodity_type_id;
	}
	public void setCommodity_type_id(String commodity_type_id) {
		this.commodity_type_id = commodity_type_id;
	}
	public String getSeries_id() {
		return series_id;
	}
	public void setSeries_id(String series_id) {
		this.series_id = series_id;
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
	public double getGoods_stock_price() {
		return goods_stock_price;
	}
	public void setGoods_stock_price(double goods_stock_price) {
		this.goods_stock_price = goods_stock_price;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getDescribe_one() {
		return describe_one;
	}
	public void setDescribe_one(String describe_one) {
		this.describe_one = describe_one;
	}
	public String getDescribe_two() {
		return describe_two;
	}
	public void setDescribe_two(String describe_two) {
		this.describe_two = describe_two;
	}
	public String getCommodity_name() {
		return commodity_name;
	}
	public void setCommodity_name(String commodity_name) {
		this.commodity_name = commodity_name;
	}
	public int getTotal_number() {
		return total_number;
	}
	public void setTotal_number(int total_number) {
		this.total_number = total_number;
	}
	public int getSurplus_number() {
		return surplus_number;
	}
	public void setSurplus_number(int surplus_number) {
		this.surplus_number = surplus_number;
	}
	public CommodityEntity(String commodity_id, String commodity_type_id, String series_id, String type_id,
			String specifications_id, double goods_stock_price, double price, String describe_one, String describe_two,
			String commodity_name, int total_number, int surplus_number) {
		super();
		this.commodity_id = commodity_id;
		this.commodity_type_id = commodity_type_id;
		this.series_id = series_id;
		this.type_id = type_id;
		this.specifications_id = specifications_id;
		this.goods_stock_price = goods_stock_price;
		this.price = price;
		this.describe_one = describe_one;
		this.describe_two = describe_two;
		this.commodity_name = commodity_name;
		this.total_number = total_number;
		this.surplus_number = surplus_number;
	}
	public CommodityEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
}
