#!/bin/bash

source .env

if [ -z "$1" ]; then
	wd=$(pwd)
	args=${wd}
else
	wd=$1
	args=$@
fi 
VOL_MAP="-v ${wd}:${wd}"

echo docker container run ${RUN_OPTS} ${CONTAINER_NAME} ${MODE} ${NETWORK} ${PORT_MAP} ${VOL_MAP} ${REGISTRY}${IMAGE}${TAG} $args
echo ""
docker container run ${RUN_OPTS} ${CONTAINER_NAME} ${MODE} ${NETWORK} ${PORT_MAP} ${VOL_MAP} ${REGISTRY}${IMAGE}${TAG} $args

