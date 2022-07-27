#!/usr/bin/env bash

cmd="docker/run/miw_container.sh bash"  

# No docker?
if (! command -v "docker" &> /dev/null ) then
    exit 0;    
fi

eval ${cmd}