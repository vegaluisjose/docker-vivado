#!/bin/bash

/tmp/wi/xsetup -b AuthTokenGen
/tmp/wi/xsetup -b ConfigGen

cp /home/vivado/.Xilinx/wi_authentication_key /workspace/
cp /home/vivado/.Xilinx/install_config.txt /workspace/
