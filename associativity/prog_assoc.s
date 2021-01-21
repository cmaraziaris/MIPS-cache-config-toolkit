#
# Loop 0: L1
# Loop 1: L1
# Loop 2: L1 L2
# Loop 3: L1 L2
# Loop 4: L1 L2 L3 L4
# Loop 5: L1 L2 L3 L4
# Loop 6: L1 L2 L3 L4 L5 L6 L7 L8 
# Loop 7: L1 L2 L3 L4 L5 L6 L7 L8
#

.org    0x80020000
.text

main:
  addi $s0, $zero, 0   # Loop counter
  addi $s1, $zero, 7   # 8 total loops
  j init

.org    0x80020100
init:
  addi $t1, $zero, 1
  addi $t2, $zero, 2
  addi $t3, $zero, 3
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
  beq $s0, $t1, cont1
  j L2
cont1:
  j loop

.org    0x82020000  
L2:
  beq $s0, $t2, cont3
  beq $s0, $t3, cont3
  j L3
cont3:
  j loop

.org    0x83020000  
L3:
  addi $t4, $zero, 4
  addi $t5, $zero, 5
  j L4

.org    0x84020000  
L4:
  beq $s0, $t4, cont4
  beq $s0, $t5, cont4
  j L5
cont4:
  j loop

.org    0x85020000  
L5: 
  j L6

.org    0x86020000  
L6: j L7

.org    0x87020000  
L7: j L8

.org    0x88020000  
L8:
  addi $v0, $zero, 10
  j loop

######################