#!/bin/bash

/tmp/wi/xsetup -b AuthTokenGen
/tmp/wi/xsetup -b ConfigGen

cp /root/.Xilinx/wi_authentication_key /workspace/
cp /root/.Xilinx/install_config.txt /workspace/
