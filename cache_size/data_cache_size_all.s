
.org  0x10000000
.data

w: .word 1

.org    0x80020000  
.text

main:

loop16k:

  addi $a0, $zero, 4096
  jal loop_twice
  nop

loop32k:

  addi $a0, $zero, 8192
  jal loop_twice
  nop

end:

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
  la $s2, w

inner:

  beq $t0, $s0, end_inner

  lw $t5, 0($s2)

  addi $s2, $s2, 4
  addi $t0, $t0, 1
  j inner

end_inner:

  addi $s1, $s1, -1
  j outer

end_outter:

  jr $ra
####################