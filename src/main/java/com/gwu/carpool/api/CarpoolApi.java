package com.gwu.carpool.api;

import java.util.Optional;

import com.gwu.carpool.api.dao.CarpoolDAO;
import com.gwu.carpool.core.model.User;

public class CarpoolApi{
	
	final CarpoolDAO dao;
	
	public CarpoolApi(CarpoolDAO dao){
		this.dao = dao;
	}
	
	public Optional<User> getUserByEmail(String email) {
        Optional<User> result = dao.getUserByEmail(email);
        return result;
    }

}