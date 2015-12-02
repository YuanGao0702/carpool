package com.gwu.carpool.web.json;

import java.util.ArrayList;

import com.gwu.carpool.core.model.Event;
import com.gwu.carpool.core.model.User;
import com.fasterxml.jackson.annotation.JsonProperty;

public class UserJson {
	

	private String id;
    private String email;
    private String username;
    private String gender;
    private String phone;
    private String password;
    private String reputation;


    public UserJson() {}

    public UserJson(User u) {
    	this.id = u.getId();
		this.email = u.getEmail();
		this.username = u.getUsername();
		this.gender = u.getGender();
		this.phone = u.getPhone();
		this.password = u.getPassword();
		this.reputation = u.getReputation();
    }

    public User toUser() {
        return new User(email, username, gender, phone, password, reputation);
    }
    
    @JsonProperty("id")
	public String getId() {
		return id;
	}
    
    @JsonProperty("email")
	public String getEmail() {
		return email;
	}
    
    @JsonProperty("username")
	public String getUsername() {
		return username;
	}
    
    @JsonProperty("gender")
	public String getGender() {
		return gender;
	}
    
    @JsonProperty("phone")
	public String getPhone() {
		return phone;
	}
    
    @JsonProperty("password")
	public String getPassword() {
		return password;
	}
    
    @JsonProperty("reputation")
	public String getReputation() {
		return reputation;
	}



    
 
}