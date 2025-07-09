#!/bin/bash

export XILINX_2024_PATH=/opt/Electro/FPGA/Xilinx

source $XILINX_2024_PATH/Vivado/2024.2/settings64.sh

bootgen -image boot_fuseprotect.bif -arch zynq -w -o i BOOT.bin
