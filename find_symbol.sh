#!/bin/bash - 
#===============================================================================
#
#          FILE: find_symbol.sh
# 
#         USAGE: ./find_symbol.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: he.a.zhang (ezzghhe), he.a.zhang@ericsson.com
#  ORGANIZATION: ericsson
#       CREATED: 09/29/17 13:41:42
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
base_path=$1;
symbol=$2;
ext=$3;
for i in $(find $1 -name "*.$ext") ;do
    res=`nm --defined-only $i 2>/dev/null | grep $2`;
    if [ -n "$res" ] ; then
            echo $i;
    fi

done

