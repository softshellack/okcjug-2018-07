#!/bin/bash

time curl -s "http://localhost:8080/hello/mitch/3?[1-100000]" >/dev/null &
time curl -s "http://localhost:4567/hello/mitch/3?[1-100000]" >/dev/null &
time curl -s "http://localhost:8000/hello/mitch/3?[1-100000]" >/dev/null &

