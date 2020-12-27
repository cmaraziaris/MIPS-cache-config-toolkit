
.org  0x10000000

w1: .word 1

.org  0x11000000
w2: .word 2

.org  0x12000000
w3: .word 3

.org  0x13000000
w4: .word 4

.org  0x14000000
w5: .word 5


.org    0x80020000  
.text
.globl main

main:

addi $s0, $zero, 2
addi $t0, $zero, 0

loop:

beq $s0, $t0, end
la $t1, w1
lw $t5, 0($t1)
la $t1, w2
lw $t5, 0($t1)
la $t1, w3
lw $t5, 0($t1)
la $t1, w4
lw $t5, 0($t1)
la $t1, w5
lw $t5, 0($t1)
addi $t0, $t0, 1
j loop

end:

addi $v0, $zero, 10
syscall