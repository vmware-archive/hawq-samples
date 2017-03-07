#!/bin/bash 

# replace NAMENODE in create_pxf_tables.sql file with hostname or ip addr
# provided by the user

# usage:  set_namenode.sh <name-node>

# make sure this was called with a single argument
if [ "$#" -ne 1 ]; then
   echo "error: set_namenode.sh is missing <name-node> identifier"
   exit 1
fi

CURDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
NN="$1"

#echo "CURDIR is $CURDIR"
#echo "NN is $NN"

# assume the file is in the current directory
# MACOS - sed -i .bak "s/NAMENODE/$NN/g" $CURDIR/create_pxf_tables.sql
sed -i "s/NAMENODE/$NN/g" $CURDIR/create_pxf_tables.sql

echo "create_pxf_tables.sql - NAMENODE changed to $NN"

