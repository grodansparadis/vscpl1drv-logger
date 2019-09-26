#!/bin/bash

# General common files
cd _vscp_common_general
rm -f *
wget https://raw.githubusercontent.com/grodansparadis/vscp/master/src/common/dllist.c
wget https://raw.githubusercontent.com/grodansparadis/vscp/master/src/common/dllist.h
cd ..
# VSCP Common files
cd _vscp_common
rm -f *
wget https://raw.githubusercontent.com/grodansparadis/vscp/master/src/vscp/common/guid.cpp
wget https://raw.githubusercontent.com/grodansparadis/vscp/master/src/vscp/common/guid.h
cd ..