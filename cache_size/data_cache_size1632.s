
.org  0x10000000
.data

w: .word 1


.org    0x80020000  
.text
.globl main

main:

  addi $s0, $zero, 8192

  addi $t1, $zero, 0
  addi $s2, $zero, 2

outer:
  
  beq $t1, $s2, end_outter
  addi $t0, $zero, 0
  la $s1, w

inner:

  beq $t0, $s0, end_inner
  nop

  lw $t5, 0($s1)

  addi $s1, $s1, 4
  addi $t0, $t0, 1
  j inner
  nop

end_inner:
  addi $t1, $t1, 1
  j outer

end_outter:
  addi $v0, $zero, 10
  syscall






