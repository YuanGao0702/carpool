package com.gwu.carpool.DAO;

import com.gwu.carpool.pojo.User;

public interface CarpoolDAO {
	public User Login(String username, String password);
}
