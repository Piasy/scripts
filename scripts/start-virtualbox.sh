#!/bin/bash
XAUTHORITY=$(ps wwax -C X,Xorg -o args= --sort=-stime | grep -m 1 '/usr/bin/X' | cut -d ' ' -f 4) virtualbox
