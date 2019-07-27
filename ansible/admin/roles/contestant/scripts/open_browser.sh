#!/bin/bash
export DISPLAY=':0'
#requires xhost + on remote side
firefox -new-tab -url "http://172.30.20.100:8080/seat" &
