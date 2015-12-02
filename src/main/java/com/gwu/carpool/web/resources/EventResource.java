package com.gwu.carpool.web.resources;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Stream;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.codahale.metrics.annotation.Timed;
import com.gwu.carpool.api.CarpoolApi;
import com.gwu.carpool.core.model.Event;
import com.gwu.carpool.core.model.User;
import com.gwu.carpool.web.json.EventJson;
import com.gwu.carpool.web.json.UserJson;

@Path("/api/event")
@Produces(MediaType.APPLICATION_JSON)
public class EventResource {
	
		private CarpoolApi api;
		
		//constructor
		public EventResource(CarpoolApi api) {
	        this.api = api;
	    }
		
		@GET
	    @Produces(MediaType.APPLICATION_JSON)
	    public Response getAllEvents() {
	        List<Event> events = api.getAllEvents();
	        List<EventJson> jsons = new ArrayList<EventJson>();
	        for(Event one : events){
	        	EventJson uj = new EventJson(one);
	        	jsons.add(uj);
	        }
	        //Stream<UserJson> jsons = users.parallelStream().map(u -> new UserJson(u));
	        //return Response.ok(jsons.toArray()).build();
	        return Response.ok(jsons).build();
	    }
		
		@GET
	    @Path("/{email}")
	    @Timed
	    public Response getUserByEmail(@PathParam("email") String email) {
	        Optional<User> result = api.getUserByEmail(email);
	        if (result.isPresent()) {
	            return Response.ok(new UserJson(result.get())).build();
//	        	return Response.ok("email got called").build();
	        } else {
	            return Response.status(Response.Status.NOT_FOUND).build();
	        }
	    }
		
		@GET
	    @Path("/{email}/{gender}")
	    @Timed
	    public Response getProfile(@PathParam("gender") String email) {
	        Optional<User> result = api.getUserByEmail(email);
	        if (result.isPresent()) {
	            //return Response.ok(new UserJson(result.get())).build();
	        	return Response.ok("gender got called").build();
	        } else {
	            return Response.status(Response.Status.NOT_FOUND).build();
	        }
	    }
}
