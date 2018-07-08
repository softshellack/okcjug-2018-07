#!/bin/bash

sudo docker kill $(sudo docker ps -q)
sudo docker container prune -f

