
.org    0x80020000
addi $s0, $zero, 2
loop:
addi $s0, $s0, -1
j L1
addi $v0, $zero, 10

.org    0x81020000  
L1: beq $s0, $zero, dummy
j loop
nop
dummy: syscall
