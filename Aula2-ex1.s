.data

.text

main:

li $t0, 15
li $t1, 30      #inicializacao

add $t3, $t0, $t1


li $v0, 1
#add $a0, $zero, $t3
move $a0, $t3
syscall #chamada de sistema

li $v0, 10
syscall #chamada de sistema