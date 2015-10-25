package com.gwu.carpool.api;

import com.gwu.carpool.DAO.CarpoolDAO;
import com.gwu.carpool.DAO.CarpoolImpl;
import com.gwu.carpool.pojo.User;

public class InternalAPI_v1 {
	CarpoolDAO dao = new CarpoolImpl();

	public User login(String username, String password) {
		return dao.Login(username, password);
	}
}
