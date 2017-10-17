sde-as alu_test.s -g -o alu_test.o
sde-ld alu_test.o -Ttext 0x00008000 -o alu_test.image
sde-objdump alu_test.image -D > alu_test.txt
sde-conv alu_test.image -o alu_test.conv
rm *.o
rm *.image

