#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# Errors to ignore
# shellcheck disable=SC2068,SC2086

# This script installs basic packages in one go.

green="\e[0;92m"
blue="\e[0;94m"
reset="\e[0m"

# Tools to install
declare -a tools=("git" "python" "wget")

# Function to install termux package
function install {
    com="pkg install $1"
    command $com # Execute command
}

# Function to Prompt user to install a particular package or not
function prompt {
    echo -e "Do you want to install $green$1${reset}? $blue[Y/n]:$reset "
    read -r response
    case $response in [yY][eE][sS] | [yY] | [jJ] | '')
        response=0 # True
        ;;
    *)
        response=1 # False
        ;;
    esac
    return $response

}

# Iterating the tools array using for loop
for tool in ${tools[@]}; do
    if prompt "${tool}"; then
        install $tool
    fi
done
