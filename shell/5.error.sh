#!/bin/bash

output=$(lts &> /dev/null ) 

[[ $? = 127 ]] && echo "command not found"

[[ $? = 0 ]] && echo "is installed" || echo "not installed"