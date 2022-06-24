#!/usr/bin/env bash

argument_values=("$@")
nr_of_arguments=${#argument_values[@]}

containername="python-ai"
entrypoint="run_script"
cmd="../run/miw_container.sh ${containername} ${entrypoint}"

# Run with script?
if [ $nr_of_arguments -gt 0 ]; then
  cmd="${cmd} \"${argument_values[0]}\""
  containername="${containername}-script"
fi

eval ${cmd}