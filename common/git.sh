#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# This file conatin logic and functions to install a tool from github into kali-linux or termux in one go.

# This function will clone the github  repository url to the desired destination

function clone() {
    dest=${@: -1} # last element
    for arg in "${@:1:$# -1}" # accessing all elements accept last
    do
        com="git clone ${arg} ${dest}" # git clone url formation
        echo $com # execution command
    done
}

clone url1 url2 url3 destination #demo input

# Output should be

# git clone url1 destination
# git clone url2 destination
# git clone url3 destination
