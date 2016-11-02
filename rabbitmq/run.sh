#!/bin/bash
docker run -it --rm \
	-p 15672:15672 \
	-p 5672:5672 \
	rabbitmq:3.6.5-management 

