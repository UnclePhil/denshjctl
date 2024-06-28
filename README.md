# DenSh

(D)ocker (E)vents (N)otifier in (Sh)ell via journalctl..... to grab it in ELK

## Purpose 
have some monitoring on docker events in a Docker Swarm Cluster (or on any docker host).

It's a simple usage of ('Docker events')[https://docs.docker.com/engine/reference/commandline/events/]

For the moment Densh monitor:
- Services
- Volumes
- Nodes


## Usage 
open docker-compose.yml file 
Set appropriate environment var 

### Mandatory
- DENSH_NOTIFIER :[console] default console  MUST be lowercase
- DENSH_CLUSTER_NAME to indicate the cluster name  (don't ask why, it's specific purpose on m'y infra

## load the stack on the cluster
- docker stack deploy -c docker-compose.yml

