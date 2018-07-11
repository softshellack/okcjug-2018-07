#!/bin/sh

sudo docker run -p 8080:8080 --name hello-wildfly -d hello-wildfly
sudo docker run -p 8081:8081 --name hello-payara -d hello-payara
sudo docker run -p 4567:4567 --name hello-javaspark -d hello-javaspark
sudo docker run -p 8000:8000 --name hello-rust -d hello-rust

