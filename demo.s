.data
hellostring:  .ascii "Hello "
              .asciiz "World!\n"

.text
.globl main

main:
  li  $a0, 0
  la  $a1, hellostring
  li  $a2, 14
  li  $v0, 4004
  syscall

  li  $a0, 0
  li  $v0, 4001
  syscall
