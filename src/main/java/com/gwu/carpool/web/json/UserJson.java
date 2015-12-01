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
    
    @JsonProperty
	public String getId() {
		return id;
	}
    
    @JsonProperty
	public String getEmail() {
		return email;
	}
    
    @JsonProperty
	public String getUsername() {
		return username;
	}
    
    @JsonProperty
	public String getGender() {
		return gender;
	}
    
    @JsonProperty
	public String getPhone() {
		return phone;
	}
    
    @JsonProperty
	public String getPassword() {
		return password;
	}
    
    @JsonProperty
	public String getReputation() {
		return reputation;
	}



    
 
}