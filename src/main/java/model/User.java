package model;

import org.hibernate.validator.constraints.NotEmpty;

public class User {
	@NotEmpty(message = "입력하세요")
	private String user_id;
	@NotEmpty(message = "입력하세요")
	private String password;
	@NotEmpty(message = "입력하세요")
	private String user_name;
	@NotEmpty(message = "입력하세요")
	private String email;
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
}
