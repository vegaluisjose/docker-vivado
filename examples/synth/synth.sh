#!/bin/bash

source /tools/Xilinx/Vivado/2020.1/settings64.sh

vivado -mode batch -source synth.tcl
