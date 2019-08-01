#!/bin/sh

# Variables
LV=/dev/ubuntu-vg/ubuntu-lv
SIZE=+100G

# Extend the given logical volume by the size
lvextend -L $SIZE $LV

# Resize the filesystem on the given logical volume
resize2fs $LV
