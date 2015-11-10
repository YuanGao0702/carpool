package com.gwu.carpool.api.dao.impl;

import java.util.List;
import java.util.Optional;

import org.bson.Document;

import com.gwu.carpool.api.dao.CarpoolDAO;
import com.gwu.carpool.core.model.User;
import com.mongodb.Block;
import com.mongodb.MongoClient;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoDatabase;

public class MongoDAO implements CarpoolDAO {

	String dataBaseName = "carpool";
	String userCollectionName = "user";
	String eventCollectionName = "event";
	
	public MongoDAO(String dataBaseName){
		this.dataBaseName = dataBaseName;
	}
	
	@Override
	public User createUser(User user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Optional<User> getUserByEmail(String email) {
		// TODO Auto-generated method stub
		MongoClient mongoClient = new MongoClient();
		MongoDatabase db = mongoClient.getDatabase(dataBaseName);
		
		FindIterable<Document> iterable = db.getCollection(userCollectionName).find(
		        new Document("email", email));
		
		if(iterable.first() == null){
			mongoClient.close();
			return Optional.empty();
		}
		final User user = new User();
		iterable.forEach(new Block<Document>() {
		    @Override
		    public void apply(final Document document) {
		    	user.setEmail(document.getString("email"));
		        user.setPassword(document.getString("password"));
		        
		    }
		});
		mongoClient.close();
		return Optional.of(user);
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