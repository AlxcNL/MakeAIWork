#!/usr/bin/env bash

export PROJECT="project_1"

containername="python-ai-bash"
entrypoint="/bin/bash"

cmd="../run/miw_container.sh ${containername} ${entrypoint}"
eval ${cmd}