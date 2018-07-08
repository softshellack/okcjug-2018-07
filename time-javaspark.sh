#!/bin/sh



sudo docker run -p 4567:4567 --name hello-javaspark -d hello-javaspark
until $(curl --output /dev/null --silent --head --fail http://localhost:4567/hello/mitch/3); do
	printf '.'
done

