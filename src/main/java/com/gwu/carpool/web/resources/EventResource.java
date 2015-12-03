package com.gwu.carpool.web.resources;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Stream;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.codahale.metrics.annotation.Timed;
import com.gwu.carpool.api.CarpoolApi;
import com.gwu.carpool.core.model.Event;
import com.gwu.carpool.core.model.User;
import com.gwu.carpool.web.json.EventJson;
import com.gwu.carpool.web.json.UserJson;

@Path("/api/events")
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
		@Path("/request")
	    @Timed
	    public Response getEventByEventIdAndUserIdWithRole(@QueryParam("eventId") String eventId, @QueryParam("userId") String userId) {
			
			Optional<Event> evt = api.getEventById(eventId);
	        if (evt.isPresent()) {
	        	EventJson json = new EventJson(evt.get());
	        	if(evt.get().getDriver().getId().equals(userId)){
	        		json.setRole("driver");
	        	}
	        	else{
	        		json.setRole("rider");
	        	}
	            return Response.ok(json).build();
//	        	return Response.ok("email got called").build();
	        } else {
	            return Response.status(Response.Status.NOT_FOUND).entity("get event failed!").build();
	        	//return Response.ok("fuck u!").build();
	        }
	    }
		
		
		
		@GET
	    @Path("/{id}")
	    @Timed
	    public Response getEventById(@PathParam("id") String id) {
	        Optional<Event> result = api.getEventById(id);
	        if (result.isPresent()) {
	        	
	            return Response.ok(new EventJson(result.get())).build();
//	        	return Response.ok("email got called").build();
	        } else {
	            return Response.status(Response.Status.NOT_FOUND).build();
	        }
	    }
		
	
}
