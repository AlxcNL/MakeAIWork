#!/usr/bin/env bash

argument_values=("$@")
nr_of_arguments=${#argument_values[@]}

name="jaboo/miw"
image="${name}:latest"
containername="${argument_values[0]}"
containerdir_project="/project"
hostdir_project="${PWD}"
containerdir_work="/home/jovyan/work"
hostdir_work="${PWD}/notebooks"

cmd="docker run -it --rm --name ${containername} -v \"${hostdir_project}:${containerdir_project}\""

# Default entrypoint
if [ $nr_of_arguments -lt 2 ]; then
  portmapping="8888:8888"
  cmd="${cmd} -v \"${hostdir_work}:${containerdir_work}\" -p${portmapping}" 
fi

# Python entrypoint
if [ $nr_of_arguments -gt 1 ]; then 
    # Add entrypoint
    cmd="${cmd} --entrypoint "${argument_values[1]}""
fi

# Run with script
if [ $nr_of_arguments -gt 2 ]; then 
    script="${containerdir_project}/${argument_values[2]}"
    cmd="${cmd} -e SCRIPT=${script}"  
fi

cmd="${cmd} ${image}"
eval ${cmd}