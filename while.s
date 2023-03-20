.data

.text

main:

li $t0,0

ualy:
slti $s1, $t0, 10
beq $s1, $zero, goto
addi $t0, $t0,1
j ualy

goto:
li $v0, 1
add $a0, $zero, $t5
syscall

li $v0, 10
syscall