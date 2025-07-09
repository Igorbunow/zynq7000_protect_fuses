#!/bin/bash
source /opt/Electro/FPGA/Xilinx/2025.1/Vivado/settings64.sh

program_flash -f BOOT.bin -offset 0 \
-flash_type nand-x8 -fsbl \
fsbl_jtag.elf -verify \
-url TCP:127.0.0.1:3121
