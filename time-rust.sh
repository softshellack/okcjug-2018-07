#!/bin/sh

sudo docker run -p 8000:8000 --name hello-rust -d hello-rust
until $(curl --output /dev/null --silent --head --fail http://localhost:8000/hello/mitch/3); do
	printf '.'
	sleep 1
done

