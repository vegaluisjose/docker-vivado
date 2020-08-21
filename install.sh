#!/bin/bash

VIVADO_BIN=Xilinx_Unified_2020.1_0602_1208_Lin64.bin

chmod +x $VIVADO_BIN

docker build -t "vivado" -f Dockerfile.vivado .

docker run --rm --pid=host -v "$(pwd)":/workspace "vivado" bash --login /workspace/example.sh
