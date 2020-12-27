
.org    0x80020000
addi $s0, $zero, 2
loop:
j L1
addi $v0, $zero, 10

.org    0x81020000  
L1: addi $s0, $s0, -1
j L2

.org    0x84020000  
L2: beq $s0, $zero, dummy
j loop
nop
dummy: syscall

