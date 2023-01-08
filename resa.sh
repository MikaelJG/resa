#!/bin/bash

NOM_DU_PROJECT=$1
DIR=$(pwd)
COMPONENTS=()
WANTED_COMPONENTS=()
ARGUMENTS=( "$@" )

# $1 is what ARE_COMPONENTS returns!
if ARE_COMPONENTS $1;
    then
    INSTALL_ALL
    COMPONENTS_ALL
else
    echo "something went wrong"
fi

# open vscode 
# code .
# to run the app on http://localhost:3000
npm start
