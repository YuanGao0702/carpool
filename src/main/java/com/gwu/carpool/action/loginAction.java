package com.gwu.carpool.action;

import com.gwu.carpool.api.InternalAPI_v1;
import com.gwu.carpool.pojo.User;

public class loginAction {
	private String email;
	private String password;

	public String getemail() {
		return email;
	}

	public String getpassword() {
		return password;
	}

	public String execute() throws Exception {
		User user = new User();
		InternalAPI_v1 internal = new InternalAPI_v1();
		user = internal.login(getemail());
		if (user.getPassword().equals(getpassword()))
			return "success";
		else
			return "error";
	}
}
