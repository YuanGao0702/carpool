package com.gwu.carpool.api.dao;

import com.gwu.carpool.core.model.*;

import java.util.Date;
import java.util.List;
import java.util.Optional;

public interface CarpoolDAO {
	//create
	public void createUser(User user);
	public void createEvent(Event event);
	//read
	public Optional<User> getUserByEmail(String email);
	public List<Event> getEventsByUserID(String userId);
	public List<Event> getEventsByDepartureTime(Date date);
	public List<Event> getAllEvents();
	public List<User> getAllUsers();
	public List<Event> getEventsByUserIdAsDriver(String userId);
	public List<Event> getEventsByUserIdAsPending(String userId);
	public List<Event> getEventsByUserIdAsPassenger(String userId);
	
	//update
    public User updateUser(User user);
    public void removePendingFromEvent(Event evt, User usr);
    public void addPendingToEvent(Event evt, User usr);
    public void addPassengerToEvent(Event evt, User usr);
    public void changeEventStatus(Event evt, String stat);
    //delete
    public Optional<User> deleteUser(String user);
    
    
}