# learn-assembly
This repository is where I store assembly code based on i386(x86 intel)

## Compiling assembly
    nasm -f elf32 -o file.o file.asm 
    ld -m elf_i386 -o hello hello.o 
