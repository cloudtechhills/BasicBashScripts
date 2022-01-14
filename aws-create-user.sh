#!/bin/bash

#THIS SCRIPT USE AWS CLI TO CREATE A NEW USER.
#ENSURE YOU HAVE THE PROPER PERMISSION BEFORE YOU EXECUTE THIS SCRIPT.

#AUTHOR: CLOUTECHHILLS

name="${1}"

cli_arg="${#}"
if [[ "${cli_arg}" -eq 0 ]];
then
        echo "Syntax: ${0} alice"
        exit 1
fi

aws iam create-user --user-name "${name}" --output json
echo "${name} has been created successfully!"
