package entity;

public class ConsigneeEntity {
private String add_id;
private String user_id;
private String receiveing_name;
private String receiveing_phone;
private String address;
public String getAdd_id() {
	return add_id;
}
public void setAdd_id(String add_id) {
	this.add_id = add_id;
}
public String getUser_id() {
	return user_id;
}
public void setUser_id(String user_id) {
	this.user_id = user_id;
}
public String getReceiveing_name() {
	return receiveing_name;
}
public void setReceiveing_name(String receiveing_name) {
	this.receiveing_name = receiveing_name;
}
public String getReceiveing_phone() {
	return receiveing_phone;
}
public void setReceiveing_phone(String receiveing_phone) {
	this.receiveing_phone = receiveing_phone;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public ConsigneeEntity(String add_id, String user_id, String receiveing_name, String receiveing_phone, String address) {
	this.add_id = add_id;
	this.user_id = user_id;
	this.receiveing_name = receiveing_name;
	this.receiveing_phone = receiveing_phone;
	this.address = address;
}
public  ConsigneeEntity() {
	
}
}
