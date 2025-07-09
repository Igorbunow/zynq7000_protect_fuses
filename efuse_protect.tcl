
connect

jtag target 1
jtag frequency -list
jtag frequency 12000000

after 500
targets -set -filter {name =~ "APU"}
rst -system
after 500
targets -set -filter {name =~ "ARM*#0"}
rst -processor
after 500

source ps7_init.tcl
ps7_init
ps7_post_config
after 500

#dow fsbl.elf
#con

#jtagterminal

dow efuse_protect.elf
#dow u-boot-spl
#dow u-boot.elf
#dow -data system.dtb 0x2000000
#dow -data uImage 0x3000000
con

