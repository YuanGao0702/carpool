package com.gwu.carpool.api;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import com.gwu.carpool.api.dao.CarpoolDAO;
import com.gwu.carpool.core.model.User;
import com.gwu.carpool.core.model.Event;

public class CarpoolApi{
	
	final CarpoolDAO dao;
	
	public CarpoolApi(CarpoolDAO dao){
		this.dao = dao;
	}
	//User
	public Optional<User> getUserByEmail(String email) {
        Optional<User> result = dao.getUserByEmail(email);
        return result;
    }
	
	public User createUser(String email, String username, String gender,
			String phone, String password, String reputation){
		if((dao.getUserByEmail(email)).isPresent()){
			throw new IllegalArgumentException("User with this email is ready exist! ");
		}
		User user = new User(email, username, gender, phone, password, reputation);
		dao.createUser(user);
		return user;
	}
	
	public User updateUser(String email, String username, String gender,
			String phone, String password, String reputation){
		User user = new User(email, username, gender, phone, password, reputation);
		return dao.updateUser(user);
	}
	
	public void deleteUser(String email){
		Optional<User> user = getUserByEmail(email);
		dao.deleteUserById(user.get().getId());
	}
	
	public List<User> getAllUser(){
		return dao.getAllUsers();
	}
	//Event
	public Event createEvent(String title, Date departureTime, String startAddress, 
			String endAddress, User driver, ArrayList<User> passengers, ArrayList<User> pending,
			String capacity, String description, String status, Date publishTime){
		Event event = new Event(title, departureTime, startAddress, endAddress, driver, passengers, pending, 
				capacity, description, status, publishTime);
		dao.createEvent(event);
		return event;
	}

	public Event getEventByTitleAndPublishTimeAndDriverId(String title, Date publishtime, String driverId){
		return dao.getEventByTitleAndPublishTimeAndDriverId(title, publishtime, driverId);
	}
	
  	public List<Event> getEventsByDepartureTime(Date date){
  		return dao.getEventsByDepartureTime(date);
  	}
  	
  	public List<Event> getEventsByUserIdAsDriver(String userId){
  		return dao.getEventsByUserIdAsDriver(userId);
  	}
  	
	public List<Event> getEventsByUserIdAsPending(String userId){
		return dao.getEventsByUserIdAsPending(userId);
	}
	
	public List<Event> getEventsByUserIdAsPassenger(String userId){
		return dao.getEventsByUserIdAsPassenger(userId);
	}
	
  	public Event updateEvent(String title, Date departureTime, String startAddress, 
			String endAddress, User driver, ArrayList<User> passengers, ArrayList<User> pending,
			String capacity, String description, String status, Date publishTime){
  		Event event = new Event(title, departureTime, startAddress, endAddress, driver, passengers, pending, 
  				capacity, description, status, publishTime);
  		return dao.updateEvent(event);
  	}
  	
  	public void deleteEvent(String title, Date publishtime, String driverId){
  		Event event = dao.getEventByTitleAndPublishTimeAndDriverId(title, publishtime, driverId);
  		dao.changeEventStatusById(event.getId(), "Deleted");
  	}
  	
  	public List<Event> getAllEvents(){
  		return dao.getAllEvents();
  	}
  	//Pending
  	public void removePendingFromEvent(String evtId, User usr){
  		dao.removePendingFromEvent(evtId, usr);
  	}
  	
    public void addPendingToEvent(String evtId, User usr){
    	dao.addPendingToEvent(evtId, usr);
    }
    
    public void addPassengerToEvent(String evtId, User usr){
    	dao.addPassengerToEvent(evtId, usr);
    	dao.removePendingFromEvent(evtId, usr);
    }
    
    public void changeEventStatusById(String evtId, String stat){
    	//stat can be delete, 
    	dao.changeEventStatusById(evtId, stat);
    }

}