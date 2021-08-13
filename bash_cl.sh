#!/bin/bash

###############################################################################  
## Title           : colors.sh 
## Description     : Used as header for bash scripts with colored outputs
## Author		   : Smile A Happy Smile
## Date            : 2021-08-02
## Version         : 1.0    
## Usage           : source /path/to/file/colors.sh
## Notes           : Import to get bash color variables
## bash_version    : 5.1.4
###############################################################################

# Standalone color variables (Are not used without ${CL} and ${CLE})
# e.g. : $CL_RED "Text to customize" $CL_NORMAL
CL_NORMAL="\e[0m"
CL_BOLD="\e[1m"
CL_HIDDEN="\e[8m"

CL_BLACK="\e[30m"
CL_WHITE="\e[97m"
CL_RED="31"
CL_GREEN="\e[32m"
CL_YELLOW="\e[33m"
CL_BLUE="\e[34m"
CL_MAGENTA="\e[35m"
CL_CYAN="\e[36m"
CL_LIGHT_GRAY="\e[37m"

CL_DARK_GRAY="\e[90m"
CL_LIGHT_RED="\e[91m"
CL_LIGHT_GREEN="\e[92m"
CL_LIGHT_YELLOW="\e[93m"
CL_LIGHT_BLUE="\e[94m"
CL_LIGHT_MAGENTA="\e[95m"
CL_LIGHT_CYAN="\e[96m"


# Using mutliple attributes together, like bold AND red
# e.g. : ${CL}${RED}${CLA}${BOLD}${CLE} "Text to Customize" ${CL_NORMAL}
# This will work as well: ${CL}${RED}${CLA}${BOLD}${CLE} "Text to Customize" ${CL}${NORMAL}${CLE}

CL="\e[" # Start
CLE="m"  # Finish
CLA=";"  # And

# Modes
NORMAL="0"
BOLD="1"
HIDDEN="8"

# Colors
BLACK="30"
WHITE="97"
RED="31"
GREEN="32"
YELLOW="33"
BLUE="34"
MAGENTA="35"
CYAN="36"
LIGHT_GRAY="37"

DARK_GRAY="90"
LIGHT_RED="91"
LIGHT_GREEN="92"
LIGHT_YELLOW="93"
LIGHT_BLUE="94"
LIGHT_MAGENTA="95"
LIGHT_CYAN="96"

# Backgrounds
BG_NORMAL=49
BG_RED=41

# Combination
CL_GB=${CL}${GREEN}${CLA}${BOLD}${CLE}
CL_BB=${CL}${BLUE}${CLA}${BOLD}${CLE}
CL_RB=${CL}${RED}${CLA}${BOLD}${CLE}


# functions

echo_cl_gb(){
    echo -ne ${CL_GB}
    echo "$@"
    echo -ne ${CL_NORMAL}
}

echo_cl_bb(){
    echo -ne ${CL_BB}
    echo "$@"
    echo -ne ${CL_NORMAL}
}

echo_cl_rb(){
    echo -ne ${CL_RB}
    echo "$@"
    echo -ne ${CL_NORMAL}
}

echo_cl_gb(){
    echo -ne ${CL_GB}
    echo "$@"
    echo -ne ${CL_NORMAL}
}