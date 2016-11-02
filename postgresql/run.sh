#!/bin/bash
docker run -it --rm \
	-v `pwd`/conf:/docker-entrypoint-initdb.d/ \
	-p 5432:5432 \
	postgres:9.5.3
