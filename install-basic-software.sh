#!/bin/bash

echo "###"
echo "### install-basic-software.sh ###"
echo "###"

DEBIAN_FRONTEND=noninteractive apt-get -yq update

echo "### Install Software"
echo "> command ifconfig"
DEBIAN_FRONTEND=noninteractive apt-get -yq install net-tools
echo "> command finger"
DEBIAN_FRONTEND=noninteractive apt-get -yq install finger