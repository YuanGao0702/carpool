package com.gwu.carpool.api.dao;

import com.gwu.carpool.core.model.*;
import java.util.List;
import java.util.Optional;

public interface CarpoolDAO {
	//create
	public User createUser(User user);
	//read
	public Optional<User> getUserByEmail(String email);
	public List<User> allProfiles();
	//update
    public User updateUser(User user);
    //delete
    public Optional<User> deleteUser(String user);
    
    
}