.data

.text

main:

addi $t0, $zero, 10
addi $t1, $zero, 5      #inicializacao
addi $t2, $zero, 6
addi $t3, $zero, 11


add $t0, $t0, $t1
sub $t2, $t2, $t3
sub $t4, $t0, $t2

add $a0, $zero, $t4
addi $v0, $zero, 1

syscall