#!/bin/bash 
# set -x

VERSION=${BUILD}
# Environment Calculation

CTX=${DENSH_CLUSTER_NAME:-Local}

##################################################
### Main Loop
##################################################
echo "Starting Densh $VERSION on $CTX to journalctl" 
# Docker event stream filtered by type=service
docker events --format '{{json .}}' --filter type=service --filter type=volume --filter type=node --filter type=config --filter type=secret 
