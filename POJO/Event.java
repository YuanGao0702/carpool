package FullStack.Java.GWUCarpool;

import java.util.ArrayList;
import java.util.Date;

public class Event {
	private int id;
	private Date startTime;
	private Date endTime;
	private String startAddress;
	private String endAddress;
	private User driver;
	private ArrayList<User> passengers;
	private ArrayList<User> pending;
	private int capacity;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	public String getStartAddress() {
		return startAddress;
	}
	public void setStartAddress(String startAddress) {
		this.startAddress = startAddress;
	}
	public String getEndAddress() {
		return endAddress;
	}
	public void setEndAddress(String endAddress) {
		this.endAddress = endAddress;
	}
	public User getDriver() {
		return driver;
	}
	public void setDriver(User driver) {
		this.driver = driver;
	}
	public ArrayList<User> getPassengers() {
		return passengers;
	}
	public void setPassengers(ArrayList<User> passengers) {
		this.passengers = passengers;
	}
	public ArrayList<User> getPending() {
		return pending;
	}
	public void setPending(ArrayList<User> pending) {
		this.pending = pending;
	}
	public int getCapacity() {
		return capacity;
	}
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}
	
}
