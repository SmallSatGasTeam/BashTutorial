
# Source configuration files for the shell tutor
#
# Configuration files have the following hierarchy:
# 0. .tutor.conf located in the shell tutor library directory
# 1. .tutor.conf located in the shell tutor distribution (same level as the lesson.sh files)
# 2. Default values hadrdcoded here
#
# All configuration files will be sourced if present, but may be overriden by values with a higher precedence in the hierarchy



# Default values to ensure Shell Tutor does not get into weird states if 
# certain configuration values are not present
_MAINTAINER_EMAIL=erik.falor@usu.edu
_DEPLOYMENT_NAME="NOT_CONFIGURED"

if [[ -f .tutor.conf ]]; then
    # Configuration file in the lib
    source .tutor.conf
fi

if [[ -f ./.tutor.conf ]]; then
    # Configuration file at the same level as the lesson
    source ./.tutor.conf
fi
