#!/bin/sh



sudo docker run -p 8080:8080 --name hello-wildfly -d hello-wildfly
until $(curl --output /dev/null --silent --head --fail http://localhost:8080/hello/mitch/3); do
	printf '.'
done

