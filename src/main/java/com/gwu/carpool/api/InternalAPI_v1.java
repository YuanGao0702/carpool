package com.gwu.carpool.api;

import com.gwu.carpool.DAO.CarpoolDAO;
import com.gwu.carpool.DAO.CarpoolImpl;
import com.gwu.carpool.pojo.User;

public class InternalAPI_v1 {
	CarpoolDAO dao = new MongoDAO();

	public User login(String email) {
		return dao.getUserByEmail(email);
	}
}
