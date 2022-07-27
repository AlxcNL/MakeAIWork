#!/usr/bin/env bash

cmd="docker/run/miw_container.sh jupyter"
runnable="docker"

# No docker?
if (! command -v ${runnable} &> /dev/null) then
    echo "Try locally installed jupyter"
    runnable="jupyter-lab"

    if (! command -v ${runnable} &> /dev/null) then 
        echo "${runnable} could not be found"
        exit -1
    else
        cmd="(cd notebooks; ${runnable})"  
    fi

fi

echo "Open the URL in your browser"
echo "$cmd"
eval ${cmd} | grep -Eo 'http://127.0.0.1:8888/lab\?.*'