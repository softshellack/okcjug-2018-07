#!/bin/sh



sudo docker run -p 8081:8081 --name hello-payara -d hello-payara
until $(curl --output /dev/null --silent --head --fail http://localhost:8081/hello/mitch/3); do
	printf '.'
done

