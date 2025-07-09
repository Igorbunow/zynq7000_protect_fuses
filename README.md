I am posting a method for blocking changes in the fuse state so as not to accidentally damage them or catch some kind of crap. The attached files are for S9/T9+ boards.

The easiest way is to write the attached BOOT.bin to the SD card, set the board to boot mode from the SD card, boot from it and wait:

PS EFUSE ok.

After that, turn off the power, boot, making sure that fuse protection is activated:

EfusePS status bit 12|13: Write protect enabled

and a second attempt to write fuses failed

PS EFUSE writing failed

Method via jtag - put the board into boot mode with jtag and execute

xsct efuse_protect.tcl

then reboot and check with a script that writing to fuses is blocked:

xsct efuse.tcl

In Linux, you can run scripts with the appropriate name, correcting the path to sources



Выкладываю способ блокировки изменения состояния фьюзов, чтобы случайно их не повредить ну или не подцепить какую дрянь. Прилагаемые файлы для S9/T9+ плат.

Самое простое - записать прилагаемый BOOT.bin на sd карточку, перевести плату в режим загрузки с SD карточки, загрузиться с неё и дождаться: 

PS EFUSE ok.

После этого выключить питание, загрузиться, убедившись, что защита фъюзов активировалась:

EfusePS status bit 12|13: Write protect enabled

а повторная попытка записи фъюзов  не удалась

PS EFUSE writing failed  

Способ через jtag - переводим плату в режим загрузки с jtag и выполняем 

xsct efuse_protect.tcl

потом перегружаем и смотрим скриптом, что запись во фъюзы заблокировалась:

xsct efuse.tcl

В linux можно запустить скрипты с соответствующим названием, подправив путь к sources
