package com.gwu.carpool.api.dao.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import com.codahale.metrics.health.HealthCheck.Result;
import com.gwu.carpool.api.dao.CarpoolDAO;
import com.gwu.carpool.core.model.Event;
import com.gwu.carpool.core.model.User;

public class MockDAO implements CarpoolDAO{

	@Override
	public User createUser(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Optional<User> getUserByEmail(String email) {
		if(email.equals("liuqi627@gwu.edu")){
			User result = new User(1, "liuqi627@gwu.edu", "liuqi627", "male",
					"4438086967", "liuqi627", 5, null);
			return Optional.of(result);
		}
		return Optional.empty();
	}

	@Override
	public List<User> allProfiles() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User updateUser(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Optional<User> deleteUser(String user) {
		// TODO Auto-generated method stub
		return null;
	}

}
