#!/usr/bin/env bash

argument_values=("$@")
nr_of_arguments=${#argument_values[@]}

cmd_repl="docker/run/miw_container.sh python-script"  
cmd_script="docker/run/miw_container.sh python-repl"  

# No docker?
if (! command -v "docker" &> /dev/null ) then
  echo Try locally installed python
  cmd_repl="bpython"
  cmd_script="python"
fi

# Run with script?
if [ $nr_of_arguments -gt 0 ]; then
  script="${argument_values[0]}"
  printf "Run with script %s\n" ${script}
  cmd="${cmd_script} ${script}"  
else
  cmd=${cmd_repl}  
fi

if (! command -v ${cmd} &> /dev/null ) then 
  echo "${cmd} could not be found"
  exit -1
fi

echo ${cmd}
eval ${cmd}