package entity;

public class SeriesEntity {
	private String series_id;
	private String series_name;
	private int state;
	public SeriesEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SeriesEntity(String series_id, String series_name, int state) {
		super();
		this.series_id = series_id;
		this.series_name = series_name;
		this.state = state;
	}
	public String getSeries_id() {
		return series_id;
	}
	public void setSeries_id(String series_id) {
		this.series_id = series_id;
	}
	public String getSeries_name() {
		return series_name;
	}
	public void setSeries_name(String series_name) {
		this.series_name = series_name;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	
}
