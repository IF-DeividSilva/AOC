# 2) Faça o registrador $t0 e $t1 receberem os valores 10, e 20 respectivamente. E então faça um programa para resolver a seguinte expressão:
#    $t3 = ($t0 + 4) - ($t1 - 6)

.data

.text 

main:
    li $t0, 10
    li $t1, 20

    add $t3, $t0,  4
    add $t4, $t1, -6
    sub $t3, $t3, $t4

    #print 
    li $v0, 1
    add $a0, $zero, $t3
    syscall

    li $v0, 10
    syscall 
