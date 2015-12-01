package com.gwu.carpool.api.dao.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import com.codahale.metrics.health.HealthCheck.Result;
import com.gwu.carpool.api.dao.CarpoolDAO;
import com.gwu.carpool.core.model.Event;
import com.gwu.carpool.core.model.User;

public class MockDAO implements CarpoolDAO{

	@Override

	public void createUser(User user) {
	}
	
	public void createEvent(Event event) {

	}

	@Override
	public Optional<User> getUserByEmail(String email) {
		if(email.equals("liuqi627@gwu.edu")){

			User result = new User("liuqi627@gwu.edu", "liuqi627", "male",
					"4438086967", "liuqi627", "5");

			return Optional.of(result);
		}
		return Optional.empty();
	}

	@Override
	public List<User> getAllUsers() {

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

	@Override
	public List<Event> getEventsByUserID(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Event> getEventsByDepartureTime(Date date) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Event> getAllEvents() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Event> getEventsByUserIdAsDriver(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Event> getEventsByUserIdAsPending(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Event> getEventsByUserIdAsPassenger(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void removePendingFromEvent(Event evt, User usr) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void addPendingToEvent(Event evt, User usr) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void addPassengerToEvent(Event evt, User usr) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void changeEventStatus(Event evt, String stat) {
		// TODO Auto-generated method stub
		
	}

}
