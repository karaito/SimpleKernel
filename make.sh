#!/bin/sh
echo "Asembling loader"
nasm -f elf32 -o loader.o loader.asm
echo "Compiling kernel"
gcc -m32 -o kernel.o -c kernel.c -nostdlib -nostartfiles -nodefaultlibs
echo "Making .bin file "
ld -T linker.ld -m elf_i386 -o kernel.bin loader.o kernel.o
echo "Making .iso file"
grub-mkrescue -o kernel.iso ~/kernel
