sde-as add.s -g -o add.o
sde-ld add.o -Ttext 0x00008000 -o add.image
sde-conv add.image -o add.conv
sde-objdump add.image -D > add.txt
