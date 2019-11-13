package model;

import org.hibernate.validator.constraints.NotEmpty;

public class User {
	@NotEmpty(message = "입력하세요")
	private String user_id;
	@NotEmpty(message = "입력하세요")
	private String user_password;
	@NotEmpty(message = "입력하세요")
	private String user_name;
	@NotEmpty(message = "입력하세요")
	private String user_email;

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

}
