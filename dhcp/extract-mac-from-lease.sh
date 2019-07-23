#!/bin/bash
# Backup script for contestant machines
#
# Author: Ismayil Hasanov
# Date	: 23 July 2019

set -e

# Variables
LEASES=var/lib/dhcp/dhcpd.leases
KEYWORD="hardware ethernet"

cat $LEASES | grep $KEYWORD | awk '{print $3}' | cut -d";" -f1 | uniq
