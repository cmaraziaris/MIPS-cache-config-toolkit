
.org    0x80020000
.text

main:

  j loop16k

end_loop_16k:

  j loop32k

end_loop_32k:

  addi $v0, $zero, 10
  syscall

################################
.org    0x80030000  
loop16k:

  addi $s0, $zero, 2

loop16:

  bne $s0, $zero, cont16
  j end_loop_16k

cont16:

.org    0x80033FF8
  addi $s0, $s0, -1
  j loop16
##################################

.org    0x80040000  
loop32k:

  addi $s0, $zero, 2

loop32:

  bne $s0, $zero, cont32
  j end_loop_32k

cont32:

.org    0x80047FF8
  addi $s0, $s0, -1
  j loop32
##################################
