#!/usr/bin/env bash
# -*- coding: utf-8 -*-

# Contains Colours code and functions

# shellcheck disable=SC2034
# SC2034 unused variables
# Taken from https://techstop.github.io/bash-script-colors/

# Ansi color code variables

red="\e[0;91m"
blue="\e[0;94m"
expand_bg="\e[K"
blue_bg="\e[0;104m${expand_bg}"
red_bg="\e[0;101m${expand_bg}"
green_bg="\e[0;102m${expand_bg}"
green="\e[0;92m"
white="\e[0;97m"
bold="\e[1m"
uline="\e[4m"
reset="\e[0m"

# horizontally expanded backgrounds
echo -e "${blue_bg}${reset}"
echo -e "${red_bg}${reset}"
echo -e "${green_bg}${reset}"

# colored text
echo -e "${red}Hello World!${reset}"
echo -e "${blue}Hello World!${reset}"
echo -e "${green}Hello World!${reset}"
echo -e "${white}Hello World!${reset}"

echo ""

# bold colored text
echo -e "${red}${bold}Hello World!${reset}"
echo -e "${blue}${bold}Hello World!${reset}"
echo -e "${green}${bold}Hello World!${reset}"
echo -e "${white}${bold}Hello World!${reset}"

echo ""

# underlined colored text
echo -e "${red}${uline}Hello World!${reset}"
echo -e "${blue}${uline}Hello World!${reset}"
echo -e "${green}${uline}Hello World!${reset}"
echo -e "${white}${uline}Hello World!${reset}"

echo ""

# ansi across multiple lines
echo -e "${green}This is a sentence across"
echo "three lines to show how an ansi color"
echo -e "works across multiple lines with echo.${reset}"

echo ""

# combining ansi in one line
echo -e "${red}This sentence ${green}displays ${blue}ansi code used in ${white}${bold}combination.${reset}"
echo -e "${red}Hello World!${reset}"

# Function to print coloured text
function print_colored_text {
    # $1 will be text
    # $2 will be ascii color code
    reset="\e[0m"
    echo -e "$2$1${reset}"
}

# Calling function print_colored_text
print_colored_text "This is red coloured text" "$red"
