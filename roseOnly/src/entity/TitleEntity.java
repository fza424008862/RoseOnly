package entity;

public class TitleEntity {
	private String title_id;
	private String title_name;
	public TitleEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TitleEntity(String title_id, String title_name) {
		super();
		this.title_id = title_id;
		this.title_name = title_name;
	}
	public String getTitle_id() {
		return title_id;
	}
	public void setTitle_id(String title_id) {
		this.title_id = title_id;
	}
	public String getTitle_name() {
		return title_name;
	}
	public void setTitle_name(String title_name) {
		this.title_name = title_name;
	}
	
	
}
