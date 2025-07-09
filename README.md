Vykladyvayu sposob blokirovki izmeneniya sostoyaniya f'yuzov, chtoby sluchayno ikh ne povredit' nu ili ne podtsepit' kakuyu dryan'. Prilagayemyye fayly dlya S9/T9+ plat. Samoye prostoye - zapisat' prilagayemyy BOOT.bin na sd kartochku, perevesti platu v rezhim zagruzki s SD kartochki, zagruzit'sya s neyo i dozhdat'sya: PS EFUSE ok. Posle etogo vyklyuchit' pitaniye, zagruzit'sya, ubedivshis', chto zashchita f"yuzov aktivirovalas': EfusePS status bit 12|13: Write protect enabled a povtornaya popytka zapisi f"yuzov ne udalas' PS EFUSE writing failed Sposob cherez jtag - perevodim platu v rezhim zagruzki s jtag i vypolnyayem xsct efuse_protect.tcl potom peregruzhayem i smotrim skriptom, chto zapis' vo f"yuzy zablokirovalas': xsct efuse.tcl V linux mozhno zapustit' skripty s sootvetstvuyushchim nazvaniyem, podpraviv put' k sources
Ещё
803 / 5 000
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
