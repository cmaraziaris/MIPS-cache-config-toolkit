# Execute 63 instructions, stored sequentialy in the text segment.

.org    0x80020000  
.text

main:

  addi $t0, $zero, 1
  addi $t0, $zero, 2
  addi $t0, $zero, 3
  addi $t0, $zero, 4
  addi $t0, $zero, 5
  addi $t0, $zero, 6
  addi $t0, $zero, 7
  addi $t0, $zero, 8
  addi $t0, $zero, 9
  addi $t0, $zero, 10
  addi $t0, $zero, 11
  addi $t0, $zero, 12
  addi $t0, $zero, 13
  addi $t0, $zero, 14
  addi $t0, $zero, 15
  addi $t0, $zero, 16
  addi $t0, $zero, 17
  addi $t0, $zero, 18
  addi $t0, $zero, 19
  addi $t0, $zero, 20
  addi $t0, $zero, 21
  addi $t0, $zero, 22
  addi $t0, $zero, 23
  addi $t0, $zero, 24
  addi $t0, $zero, 25
  addi $t0, $zero, 26
  addi $t0, $zero, 27
  addi $t0, $zero, 28
  addi $t0, $zero, 29  
  addi $t0, $zero, 30
  addi $t0, $zero, 31
  addi $t0, $zero, 32
  addi $t0, $zero, 33
  addi $t0, $zero, 34
  addi $t0, $zero, 35
  addi $t0, $zero, 36
  addi $t0, $zero, 37
  addi $t0, $zero, 38
  addi $t0, $zero, 39
  addi $t0, $zero, 40
  addi $t0, $zero, 41
  addi $t0, $zero, 42
  addi $t0, $zero, 43
  addi $t0, $zero, 44
  addi $t0, $zero, 45
  addi $t0, $zero, 46
  addi $t0, $zero, 47
  addi $t0, $zero, 48
  addi $t0, $zero, 49
  addi $t0, $zero, 50
  addi $t0, $zero, 51
  addi $t0, $zero, 52
  addi $t0, $zero, 53
  addi $t0, $zero, 54
  addi $t0, $zero, 55
  addi $t0, $zero, 56
  addi $t0, $zero, 57
  addi $t0, $zero, 58
  addi $t0, $zero, 59
  addi $t0, $zero, 60
  addi $t0, $zero, 61

end:
  addi $v0, $zero, 10
  syscall
