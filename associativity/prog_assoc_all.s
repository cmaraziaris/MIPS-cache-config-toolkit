
.org    0x80020000
.text

main:
  addi $s0, $zero, 0
  addi $s1, $zero, 12
  addi $t6, $zero, 1
  j init

.org    0x80020100
init:
  addi $t9, $zero, 2
  addi $t8, $zero, 4
  j loop 

.org    0x80020200
loop:
  beq $s0, $s1, end
  addi $s0, $s0, 1
  j L1
end:
  syscall

############################
.org    0x81020000  
L1:
  beq $s0, $zero, cont1
  beq $s0, $t6, cont1
  j L2
cont1:
  j loop

.org    0x82020000  
L2:
  beq $s0, $t9, cont3
  beq $s0, $t8, cont3
  j L3
cont3:
  j loop

.org    0x83020000  
L3:
  addi $t6, $zero, 6
  addi $t7, $zero, 8
  j L4

.org    0x84020000  
L4:
  beq $s0, $t6, cont4
  beq $s0, $t7, cont4
  j L5
cont4:
  j loop

.org    0x85020000  
L5: j L6

.org    0x86020000  
L6: j L7

.org    0x87020000  
L7: j L8

.org    0x88020000  
L8:
  addi $v0, $zero, 10
  j loop

######################