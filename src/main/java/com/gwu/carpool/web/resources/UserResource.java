package com.gwu.carpool.web.resources;

import java.util.List;
import java.util.Optional;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.codahale.metrics.annotation.Timed;
import com.gwu.carpool.api.CarpoolApi;
import com.gwu.carpool.core.model.User;
import com.gwu.carpool.web.json.UserJson;

@Path("/api/user")
@Produces(MediaType.APPLICATION_JSON)
public class UserResource {
	
		private CarpoolApi api;
		
		//constructor
		public UserResource(CarpoolApi api) {
	        this.api = api;
	    }
		
		@GET
	    @Path("/{email}")
	    @Timed
	    public Response getProfile(@PathParam("email") String email) {
	        Optional<User> result = api.getUserByEmail(email);
	        if (result.isPresent()) {
	            return Response.ok(new UserJson(result.get())).build();
	        } else {
	            return Response.status(Response.Status.NOT_FOUND).build();
	        }
	    }
}
