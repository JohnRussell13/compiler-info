# ASSEMBLY WORKFLOW

Transform (assemble) your assembly source code into an object file:
    `as --64 print.s -o print.o`
Note: Adjust --64 to your target architecture if needed (e.g., --32 for 32-bit).

Link the object file into an executable binary:
    `ld print.o -o print.out`

Run the executable:
    `./print.out`


Additional notes:

    The assembly source (print.s) must use AT&T syntax compatible with as.

    Linking with ld directly means no libc or startup files are linked. Your assembly must provide _start and handle syscalls (e.g., exit).

    For linking with libc or using main, consider using gcc or clang as linker drivers instead.

