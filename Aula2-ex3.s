.dados

.Texto

.main:

li $t1, 100
addi $t 1

sw $t 1, 40($sp)
lw $t 2, 40($sp)

li $v 0, 1
adicionar $a 0, $zero, $t 2
syscall

li $v 0, 10
syscall