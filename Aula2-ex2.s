.data

.text

main:

addi $t0, $zero, 10
addi $t1, $zero, 20      #inicializacao

addi $t0, $t0, 4
addi $t1, $t1, -6

sub $t3, $t0, $t1

syscall