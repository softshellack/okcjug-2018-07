package org.okcjug;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;


@Path("/hello")
public class Hello {
    @GET
    @Path("{name}/{aged}")
    @Produces(MediaType.TEXT_PLAIN)
    public String hello(@PathParam("name") String name, @PathParam("age") int age) {
        return String.format("Hello, %d year old named %s! (from wildfly)\n", age, name);
    }
}