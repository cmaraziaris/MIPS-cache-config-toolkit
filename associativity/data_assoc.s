# Load the words residing in the following data mem addresses: 
# 0x10000000
# 0x11000000
#
# 0x12000000
# 0x13000000
#
# 0x14000000
# 0x15000000
# 0x16000000
# 0x17000000
#
# The increment by 0x01000000 is done so all of these words are mapped
# to the same index and thus the same set in the cache.
#

.org    0x80020000  
.text

main:

  la $s5, 0x10000000
  la $s6, 0x01000000

loop2:

  addi $a0, $zero, 2  # Load the first 2 words twice.
  jal loop_twice
  nop

loop4:

  addi $a0, $zero, 4  # Load the first 4 words twice.
  jal loop_twice
  nop

loop8:

  addi $a0, $zero, 8  # Load the first 8 words twice.
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