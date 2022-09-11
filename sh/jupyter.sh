#!/usr/bin/env bash

cmd="(cd notebooks; python -m jupyterlab)"
 
printf "%s cmd : \n\t%s\n\n" "$0" "${cmd}"
eval ${cmd}