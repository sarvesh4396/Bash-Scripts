#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# Contains useful termux commands which can be reused

# Update
command pkg update

# upgrade
command pkg upgrade -y

# Update and upgrade one line
command pkg update && pkg upgrade -y