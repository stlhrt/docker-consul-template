#!/bin/bash
until consul members | grep server
do
	sleep 5
  	echo "Waiting to conenct to Consul server..."
done
supervisorctl start template