# working

.org  0x10000000
.data

w: .word 1


.org    0x80020000  
.text
.globl main

main:

  addi $t0, $zero, 0
  addi $s0, $zero, 64
  la $s1, w

Loop:

  beq $t0, $s0, End
  nop

  lw $t5, 0($s1)

  addi $s1, $s1, 4
  addi $t0, $t0, 1
  j Loop

End:
  addi $v0, $zero, 10
  syscall