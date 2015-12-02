package com.gwu.carpool.api;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import com.gwu.carpool.api.dao.CarpoolDAO;
import com.gwu.carpool.core.model.Event;
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
	
	public List<Event> getAllEvents(){
		List<Event> ae = dao.getAllEvents();
		return ae;
	}
	
	public List<User> getAllUsers(){
		List<User> au = dao.getAllUsers();
		return au;
	}

}