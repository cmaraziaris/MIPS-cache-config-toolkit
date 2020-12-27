
.org    0x80020000  

  addi $s0, $zero, 2

loop:
  bne $s0, $zero, cont
  addi $v0, $zero, 10
  syscall

cont:

.org    0x80023FF8
  j loop
  addi $s0, $s0, -1



