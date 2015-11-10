package com.gwu.carpool.core.model;


import java.util.ArrayList;

public class User {

	private int id;
    private String email;
    private String username;
    private String gender;
    private String phone;
    private String password;
    private float reputation;
    private ArrayList<Event> events;
    
    //constructor
    public User(int id, String email, String username, String gender,
			String phone, String password, float reputation,
			ArrayList<Event> events) {
		super();
		this.id = id;
		this.email = email;
		this.username = username;
		this.gender = gender;
		this.phone = phone;
		this.password = password;
		this.reputation = reputation;
		this.events = events;
	}
    
    public User(){
    	super();
    }
    
    //override toString()
    public String toString() {
        return String.format("User(%d, %s, %s, %s, %s, %s, %d)", id, email, username, gender, phone, password, reputation);
    }
    
    //getters and setters

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public float getReputation() {
        return reputation;
    }

    public void setReputation(float reputation) {
        this.reputation = reputation;
    }

    public ArrayList<Event> getEvents() {
        return events;
    }

    public void setEvents(ArrayList<Event> events) {
        this.events = events;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

}
