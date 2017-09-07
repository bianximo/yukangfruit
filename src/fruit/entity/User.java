package fruit.entity;

public class User {
	private int id;
	private String userName;
	private String password;
	private String address;
	private String tel;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public User(int id, String userName, String password, String address, String tel) {
		super();
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.address = address;
		this.tel = tel;
	}
	public User(String userName, String password, String address, String tel) {
		super();
		this.userName = userName;
		this.password = password;
		this.address = address;
		this.tel = tel;
	}
	
	
}
