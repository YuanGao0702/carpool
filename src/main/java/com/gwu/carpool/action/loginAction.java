package com.gwu.carpool.action;

import com.gwu.carpool.api.InternalAPI_v1;
import com.gwu.carpool.pojo.User;

public class loginAction {
	private String email;
	private String password;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String execute() throws Exception {
		System.out.println(getEmail());
		System.out.println(getPassword());
		User user = new User();
		InternalAPI_v1 internal = new InternalAPI_v1();
		user = internal.login(getEmail());
		if (user.getPassword().equals(getPassword()))
			return "success";
		else
			return "error";
	}
}
