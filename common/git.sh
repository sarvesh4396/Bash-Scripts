#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# This file conatin logic and functions to install a tool from github into kali-linux or termux in one go.

# This function will clone the github  repository url to the desired destination

function clone() {
    echo "$1" # arguments are accessible through $1, $2,...
}
