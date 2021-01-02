# working

.org  0x10000000
.data

w: .word 1


.org    0x80020000  
.text
.globl main

main:

  addi $s0, $zero, 64
  la $s1, w

loop:

  beq $s0, $zero, end

  lw $t5, 0($s1)

  addi $s1, $s1, 4
  addi $s0, $s0, -1
  j loop

end:
  addi $v0, $zero, 10
  syscall