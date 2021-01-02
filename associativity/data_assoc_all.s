
.org    0x80020000  
.text
.globl main

main:

la $s5, 0x10000000
la $s6, 0x01000000

loop2:

  addi $a0, $zero, 2
  jal loop_twice
  nop

loop4:

  addi $a0, $zero, 4
  jal loop_twice
  nop

loop8:

  addi $a0, $zero, 8
  jal loop_twice
  nop

au_revoir:

  addi $v0, $zero, 10
  syscall

####################
# $a0 has number of words to be loaded
loop_twice:

  addi $s0, $a0, 0
  addi $s1, $zero, 2

outer:
  
  beq $s1, $zero, end_outter
  addi $t0, $zero, 0
  add $s2, $s5, $zero

inner:

  beq $t0, $s0, end_inner

  lw $t5, 0($s2)

  add $s2, $s2, $s6
  addi $t0, $t0, 1
  j inner

end_inner:

  addi $s1, $s1, -1
  j outer

end_outter:

  jr $ra
####################