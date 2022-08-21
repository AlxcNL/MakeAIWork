#!/usr/bin/env bash

argumentValues=("$@")
nrOfArguments=${#argumentValues[@]}

cmdScript="docker/run/miw_container.sh python-script"  
cmdRepl="docker/run/miw_container.sh python-repl"  

# No docker?
if (! command -v "docker" &> /dev/null ) then
  echo Try locally installed python
  cmdRepl="ptpython"
  cmdScript="python"
fi

# Run with script?
if [ $nrOfArguments -gt 0 ]; then
  script="${argumentValues[0]}"
  printf "Run with script %s\n" ${script}
  cmd="${cmdScript} ${script}"  
else
  echo "Start ptpython"
  cmd=${cmdRepl}  
fi

if (! command -v ${cmd} &> /dev/null ) then 
  echo "${cmd} could not be found"
  exit -1
fi

printf "%s cmd : \n\t%s\n\n" "$0" "${cmd}"
eval ${cmd}