package com.gwu.carpool.web;

import com.gwu.carpool.api.CarpoolApi;
import com.gwu.carpool.api.dao.CarpoolDAO;
import com.gwu.carpool.api.dao.impl.MockDAO;
import com.gwu.carpool.api.dao.impl.MongoDAO;
import com.gwu.carpool.web.health.CarpoolHealthCheck;
import com.gwu.carpool.web.resources.UserResource;

import io.dropwizard.Application;
import io.dropwizard.setup.Environment;



public class CarpoolWeb extends Application<CarpoolConfiguration> {
    public static void main(String[] args) throws Exception {
        new CarpoolWeb().run(args);
    }

	@Override
	public void run(CarpoolConfiguration configuration, Environment environment) throws Exception {
		//final CarpoolDAO dao = new MongoDAO(configuration.getMongoDatabaseName());
		final CarpoolDAO dao = new MockDAO();
        final CarpoolApi api = new CarpoolApi(dao);
        final UserResource resource = new UserResource(api);
        final CarpoolHealthCheck healthCheck = new CarpoolHealthCheck();
        environment.healthChecks().register("carpool", healthCheck);

        
        environment.jersey().register(resource);
		
	}
}