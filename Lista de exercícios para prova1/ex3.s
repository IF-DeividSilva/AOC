# 3) Faça um programa, em assembly do MIPS, para colocar o valor 5 na posição 10 da memória. 
# Agora coloque o valor 20 na posição 40 da memória. 
# Some os conteúdos que estão na memória (5+20), e coloque o resultado na posição 100 da memória.

.data

.text

main: 
    li $t0, 5
    li $t1, 20

    sw $t0 , 40($sp)
    sw $t1, 160($sp)


    lw $t1, 40($sp)
    lw $t0, 160($sp)

    add $t3, $t0, $t1

    sw $t3, 400($sp)      

    #print
    li $v0, 1
    add $a0, $zero, $t3 
    syscall

    li $v0, 10
    syscall
