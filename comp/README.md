# COMPILER WORKFLOW

Transform C source code into LLVM IR (intermediate code):
    `clang -emit-llvm -S main.c -o main.ll`

Transform LLVM IR into assembly (.s) using llc:
    `llc main.ll -o main.s`

Transform (assemble) LLVM-generated assembly into an object file with GNU assembler:
    `as main.s -o main.o`

Assemble your custom entry point assembly into an object file:
    `as start.s -o start.o`

Link the entry point and program object files into an executable, specifying _start as entry:
    `ld start.o main.o -o main.out -e _start`

Run the executable:
    `./main.out`


Notes:

    start.s must define the _start symbol (program entry point).

    Using ld directly means no libc or startup files linked—your _start must handle program exit (syscall exit).

    For full libc support, use clang or gcc as the linker driver instead of ld.
