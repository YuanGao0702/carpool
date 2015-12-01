package com.gwu.carpool.api.dao.impl;


import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javassist.expr.NewArray;

import org.bson.Document;
import org.bson.types.ObjectId;

import com.fasterxml.jackson.annotation.JsonTypeInfo.Id;
import com.gwu.carpool.api.dao.CarpoolDAO;
import com.gwu.carpool.core.model.User;
import com.gwu.carpool.core.model.Event;
import com.mongodb.Block;
import com.mongodb.MongoClient;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;

import com.mongodb.client.MongoDatabase;

public class MongoDAO implements CarpoolDAO {


	static String dataBaseName = "carpool";
	static String userCollectionName = "user";
	static String eventCollectionName = "event";

	
	public MongoDAO(String dataBaseName){
		this.dataBaseName = dataBaseName;
	}

	public static void main(String[] args) {
		MongoDAO dao = new MongoDAO("carpool");
		MongoClient mongoClient = new MongoClient();
		MongoDatabase db = mongoClient.getDatabase(dataBaseName);
		MongoCollection<Document> coll = db.getCollection(userCollectionName);
		coll.drop();
		coll = db.getCollection(eventCollectionName);
		coll.drop();
		User user1 = new User("luonaguo@gmail.com", "Luona Guo", "female",
				"2028180726", "123456", "good");
		User user2 = new User("haha@gmail.com", "haha Guo", "female",
				"2028180733", "123456", "bad");
		
		dao.createUser(user1);
		dao.createUser(user2);
		List<User> lu = dao.getAllUsers();
		for(User usr : lu){
			System.err.println(usr.toString());
		}
		Event evt1 = new Event("Let's go to Columbia Plaza", new Date(), 
				"2000 s eads st nw, VA", "500 23rd st NW, DC", user1, null, null, 
				"5", "this is description", "waiting", new Date());
		dao.createEvent(evt1);
		
		System.err.println("----------------------------------------------------------------");
		List<Event> le = dao.getAllEvents();
		for(Event evt : le){
			System.err.println(evt.toString());
		}
	}
	
	@Override
	public void createUser(User user) {
		MongoClient mongoClient = new MongoClient();
		MongoDatabase db = mongoClient.getDatabase(dataBaseName);
		MongoCollection<Document> coll = db.getCollection(userCollectionName);
		Document doc = new Document("email",user.getEmail())
		               .append("gender", user.getGender())
		               .append("phone", user.getPhone())
		               .append("password", user.getPassword())
		               .append("reputation", user.getReputation())
		               .append("username", user.getUsername());
		coll.insertOne(doc);
		ObjectId oi = (ObjectId)doc.get("_id");
		user.setId(oi.toHexString());
		mongoClient.close();
	}
	
	public void createEvent(Event event){
		MongoClient mongoClient = new MongoClient();
		MongoDatabase db = mongoClient.getDatabase(dataBaseName);
		MongoCollection<Document> coll = db.getCollection(eventCollectionName);

		Document driver = new Document("email",event.getDriver().getEmail())
				        .append("gender", event.getDriver().getGender())
				        .append("phone", event.getDriver().getPhone())
				        .append("password", event.getDriver().getPassword())
				        .append("reputation", event.getDriver().getReputation())
				        .append("username", event.getDriver().getUsername())
						.append("_id", new ObjectId(event.getDriver().getId()));
		Document doc = new Document("title",event.getTitle())
		               .append("startAddress", event.getStartAddress())
		               .append("endAddress", event.getEndAddress())
		               .append("capacity", event.getCapacity())
		               .append("description", event.getDescription())
		               .append("status", event.getStatus())
					   .append("departureTime",event.getDepartureTime())
					   .append("publishTime", event.getPublishTime())
		               .append("driver", driver);
		coll.insertOne(doc);
		ObjectId oi = (ObjectId)doc.get("_id");
		event.setId(oi.toHexString());
		mongoClient.close();

	}

	@Override
	public Optional<User> getUserByEmail(String email) {

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
	public List<User> getAllUsers() {
		MongoClient mongoClient = new MongoClient();
		MongoDatabase db = mongoClient.getDatabase(dataBaseName);
		FindIterable<Document> iterable = db.getCollection(userCollectionName).find();
		List<User> result = new ArrayList<User>();
		iterable.forEach(new Block<Document>() {
		    @Override
		    public void apply(final Document document) {
		        result.add(userDocToUser(document));
		    }
		});
		mongoClient.close();
		return result;
	}
	
	public List<Event> getAllEvents(){
		MongoClient mongoClient = new MongoClient();
		MongoDatabase db = mongoClient.getDatabase(dataBaseName);
		FindIterable<Document> iterable = db.getCollection(eventCollectionName).find();
		List<Event> result = new ArrayList<Event>();
		iterable.forEach(new Block<Document>() {
		    @Override
		    public void apply(final Document document) {
		        result.add(eventDocToEvent(document));
		    }
		});
		mongoClient.close();
		return result;

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
	
	public static Event eventDocToEvent(Document document){
		Event evt = new Event();
    	evt.setCapacity(document.getString("capacity"));
    	evt.setDepartureTime(document.getDate("departureTime"));
    	evt.setDescription(document.getString("description"));
    	evt.setEndAddress(document.getString("endAddress"));
    	evt.setStartAddress(document.getString("startAddress"));
    	evt.setTitle(document.getString("title"));
    	ObjectId oi = (ObjectId)document.get("_id");
    	evt.setId(oi.toHexString());
    	evt.setPublishTime(document.getDate("publishTime"));
    	evt.setStatus(document.getString("status"));
    	Document docDriver = new Document();
    	docDriver = (Document)document.get("driver");
    	User driver = userDocToUser(docDriver);
    	evt.setDriver(driver);
    	ArrayList<User> passengers = new ArrayList<User>();
    	if(document.get("passengers") != null){
    		for(Document doc : (ArrayList<Document>)document.get("passengers")){
        		passengers.add(userDocToUser(doc));
        	}
    	}
    	evt.setPassengers(passengers);
    	
    	ArrayList<User> pending = new ArrayList<User>();
    	if(document.get("pending") != null){
    		for(Document doc : (ArrayList<Document>)document.get("pending")){
        		pending.add(userDocToUser(doc));
        	}
    	}
    	evt.setPending(pending);
    	//un done
    	return evt;
	}
	
	public static User userDocToUser(Document document){
		User user = new User();
    	user.setGender(document.getString("gender"));
    	user.setUsername(document.getString("username"));
    	ObjectId oi = (ObjectId)document.get("_id");
    	user.setId(oi.toHexString());
    	user.setPhone(document.getString("phone"));
    	user.setEmail(document.getString("email"));
        user.setPassword(document.getString("password"));
        user.setReputation(document.getString("reputation"));
		return user;
	}

	
}