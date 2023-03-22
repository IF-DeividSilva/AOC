.data

save: .word 0 , 0 , 0 , 0 , 0 , 5 , 6 , 7

.text

main:
    la $t0, save  # carrega o endereco do vetor save
    li $t1,0      #  inicializa t1 com 0
    li $t3,0      #  inicializa t3 com 0  

    while:
        sll $t3, $t2, 2            # t3 recebe o endereco de t2 2 posicoes a esquerda
        add $s0, $t3, $t0          # adiciona o valor de t3 em s0 
        lw $s1, 0($s0)             # adiciona o endereco de s0 em s1 
        bne $s1, $t1, sair         # comparar o valor de s1 e t1
        addi $t2, $t2,1            # t2++
        j while                    # volta pro while 

    sair:
        #imprime valor              
        li $v0, 1
        add $a0, $zero, $t2
        syscall

        #finaliza o programa
        li $v0, 10
        syscall    
