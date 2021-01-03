# Load 64 continuous words from memory.

.org  0x10000000
.data

w: .word 1  # 1st word out of 64.


.org    0x80020000  
.text

main:

  addi $s0, $zero, 64
  la $s1, w

loop:

  beq $s0, $zero, end

  lw $t5, 0($s1)

  addi $s1, $s1, 4  # $s1 points to the next word.
  addi $s0, $s0, -1
  j loop

end:
  addi $v0, $zero, 10
  syscall