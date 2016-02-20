# QEMU MIPS Docker

A container with QEMU and GCC for MIPS to cross compile and run MIPS C and Assembler code on x86.

## Example usage


```
  user@localhost:~# docker run -it asmimproved/qemu-mips
  root@9a4a95aeccde:/project# mips-linux-gnu-gcc -static -mips32r5  demo.s -o demo
  root@9a4a95aeccde:/project# qemu-mips demo
  Hello World!
```

Vim can be used within in the container to write source files.

To make an pre-existing project available in the container run the container using the following command:
```
  user@localhost:~# docker run -it -v $PATH_TO_PROJECT:/project asmimproved/qemu-mips
```
